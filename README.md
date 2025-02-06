# image-migrate
Migrate images from outside to inside of the GREAT FIREWALL.
Edit `images.txt`, add the images by line, then commit the changes.

All the migrated images are stored in `crpi-m1cph3r4d2qrg1q9.cn-hangzhou.personal.cr.aliyuncs.com/dls27/`.
Migration rule:
`registry.io/repo/image:tag` -> `crpi-m1cph3r4d2qrg1q9.cn-hangzhou.personal.cr.aliyuncs.com/dls27/repo_image:tag`

OR
`registry.io/repo/image:tag image_copy:tag_copy` -> `crpi-m1cph3r4d2qrg1q9.cn-hangzhou.personal.cr.aliyuncs.com/dls27/repo_image:tag`
`image_copy:tag_copy` is your custom name.
