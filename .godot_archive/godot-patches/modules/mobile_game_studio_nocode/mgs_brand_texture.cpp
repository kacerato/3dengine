#include "mgs_brand_texture.h"

#include "core/io/image.h"
#include "mgs_brand_data.gen.h"

Ref<ImageTexture> mgs_create_brand_texture(int p_size) {
    PackedByteArray bytes;
    bytes.resize(MGS_BRAND_DATA_SIZE);
    memcpy(bytes.ptrw(), MGS_BRAND_DATA, MGS_BRAND_DATA_SIZE);

    Ref<Image> image;
    image.instantiate();
    if (image->load_webp_from_buffer(bytes) != OK) {
        return Ref<ImageTexture>();
    }
    if (p_size > 0 && (image->get_width() != p_size || image->get_height() != p_size)) {
        image->resize(p_size, p_size, Image::INTERPOLATE_LANCZOS);
    }
    return ImageTexture::create_from_image(image);
}
