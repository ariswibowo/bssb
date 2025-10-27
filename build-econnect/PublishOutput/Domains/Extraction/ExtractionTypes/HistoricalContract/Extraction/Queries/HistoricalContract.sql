SELECT
    LTRIM (RTRIM (norek)) AS norek
  , LTRIM (RTRIM (UPPER(produk))) AS produk
  , mata_uang AS mata_uang
  , CONVERT(DATETIME, tanggal_data) AS tanggal_data
  , CONVERT(DATETIME, Tgl_jth_tempo) AS tgl_jth_tempo
  , WriteOfFlag AS writeofflag
  , jumlah_hr_tunggak AS jumlah_hr_tunggak
  , arus_kas AS arus_kas
  , bunga_eir AS bunga_eir
FROM
  local_historical
WHERE
  1 = 1
  AND CONVERT(DATETIME, tanggal_data) = @ReportingDate
ORDER BY
  LTRIM (RTRIM (norek))