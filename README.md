# KasirLo Docs

Dokumentasi [KasirLo](https://kasirlo.com) — aplikasi kasir (POS) untuk toko, minimarket, kedai kopi, restoran, dan bisnis retail. Dibangun dengan [Mintlify](https://mintlify.com), ditulis dalam bahasa Indonesia.

## Struktur konten

Halaman adalah file MDX dengan YAML frontmatter, terletak di **root** repo (bukan subfolder `docs/`). Navigasi didefinisikan di `docs.json`:

| Grup | Direktori | Isi |
|---|---|---|
| Memulai | `getting-started/` | Pengenalan, pendaftaran & login, menyiapkan toko pertama |
| Aplikasi POS | `pos-app/` | Login kasir, shift, transaksi, pembayaran, diskon, printer |
| Dashboard (Back Office) | `backoffice/` | Beranda, riwayat transaksi, pengeluaran, pelanggan, laporan |
| Produk & Stok | `products/` | Manajemen produk, scan barcode, kategori, diskon, tipe pesanan |
| Kelola Toko | `store-management/` | Cabang, karyawan, kode akses, shift, peran, pembayaran, pajak, struk, notifikasi, pengaturan |
| Lainnya | `faq.mdx` | Pertanyaan yang sering diajukan |

## Preview lokal

Mintlify CLI menolak Node 25+, sedangkan sistem ini memakai Node yang lebih baru. Gunakan script `dev.sh` yang menjalankan CLI di bawah Node 22:

```bash
./dev.sh
```

Buka `http://localhost:3000` di browser.

## Konfigurasi

- Navigasi, warna, logo, navbar, dan footer diatur di `docs.json`.
- File di `.mintignore` diabaikan saat build.

## Penerbitan

Perubahan yang di-push ke branch default otomatis ter-deploy melalui GitHub App Mintlify.
