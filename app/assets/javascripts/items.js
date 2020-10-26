$(document).on('turbolinks:load', () => {
  const buildFileField = (index) => {
    const html = `<div class="js-file_group" data-index="${index}">
                    <input class="js-file" type="file" name="item[images_attributes][${index}][image_src]"
                    id="item_images_attributes_${index}_image_src"><br>
                    <div class="js-remove">削除</div>
                  </div>`;
    return html;
  }

  let fileIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  $('#image-box').on('change', '.js-file', function (e) {
    $('#image-box').append(buildFileField(fileIndex[0]));
    fileIndex.shift();
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
  });

  $('#image-box').on('click', '.js-remove', function () {
    $(this).parent().remove();
    if ($('.js-file').length === 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });
});
