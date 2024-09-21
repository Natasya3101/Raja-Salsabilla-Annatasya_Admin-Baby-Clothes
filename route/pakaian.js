import conn from "../database.js";
import jwt from "jsonwebtoken";
export async function pakaian(req, res) {
    // Basic validation for required fields
    if (!req.body.nama_pakaian || !req.body.harga || !req.body.stok || !req.body.deskripsi_usia || !req.file) {
        return res.status(400).send('Semua field harus diisi.');
    }

    try {
        // Check if the nama_pakaian already exists
        const existingPakaian = await conn.query(
            'SELECT * FROM pakaian WHERE nama_pakaian = ?',
            [req.body.nama_pakaian]
        );

        if (existingPakaian.length > 0) {
            return res.status(400).send('Nama pakaian sudah ada. Pilih nama yang lain.');
        }

        // If nama_pakaian doesn't exist, proceed with the insertion
        await conn.query(
            'INSERT INTO pakaian VALUES (NULL, ?, ?, ?, ?, ?)',
            [req.body.nama_pakaian, req.body.harga, req.body.stok, req.body.deskripsi_usia, req.file.filename]
        );

        res.send('Pakaian Sudah di Tambahkan');
    } catch (error) {
        console.error('Error inserting data into database:', error);
        res.status(500).send('Internal Server Error');
    }
}

export async function getData(req, res) {
    const result = await conn.query(
        `SELECT * FROM pakaian`
    )
    res.send(result);
}

export async function editPakaianById(req, res) {

    try {
        await conn.query(
            `UPDATE pakaian SET nama_pakaian = ?, harga = ?, stok = ?, deskripsi_usia = ?, foto = ? WHERE kode_pakaian = ?`,
            [
                req.body.nama_pakaian,
                req.body.harga,
                req.body.stok,
                req.body.deskripsi_usia,
                req.file.filename,
                req.params.kode_pakaian
            ]
        );

        res.send("Telah Diedit.");
    } catch (error) {
        console.error('Error editing pakaian:', error);
    }
}

export async function deletePakaianById(req, res) {
    try {
      await conn.query(
        `DELETE FROM pakaian WHERE kode_pakaian = ?`,
        [req.params.kode_pakaian]
      );
  
      res.send("Pakaian telah dihapus.");
    } catch (error) {
      console.error('Error deleting pakaian:', error);
    }
  }
  