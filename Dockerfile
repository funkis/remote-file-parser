FROM node:10

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    openssh-client \
  # Project dependencies
    apt-utils \
    poppler-utils \ 
    catdoc \
    xpdf \
    tesseract-ocr \
  # all languages
    tesseract-ocr-afr \
    tesseract-ocr-amh \
    tesseract-ocr-ara \
    tesseract-ocr-asm \
    tesseract-ocr-aze \
    tesseract-ocr-bel \
    tesseract-ocr-ben \
    tesseract-ocr-bod \
    tesseract-ocr-bos \
    tesseract-ocr-bul \
    tesseract-ocr-cat \
    tesseract-ocr-ceb \
    tesseract-ocr-ces \
    tesseract-ocr-chr \
    tesseract-ocr-cym \
    tesseract-ocr-dan \
    tesseract-ocr-deu \
    tesseract-ocr-dzo \
    tesseract-ocr-ell \
    tesseract-ocr-eng \
    tesseract-ocr-enm \
    tesseract-ocr-epo \
    tesseract-ocr-est \
    tesseract-ocr-eus \
    tesseract-ocr-fas \
    tesseract-ocr-fin \
    tesseract-ocr-fra \
    tesseract-ocr-frk \
    tesseract-ocr-frm \
    tesseract-ocr-gle \
    tesseract-ocr-glg \
    tesseract-ocr-grc \
    tesseract-ocr-guj \
    tesseract-ocr-hat \
    tesseract-ocr-heb \
    tesseract-ocr-hin \
    tesseract-ocr-hrv \
    tesseract-ocr-hun \
    tesseract-ocr-iku \
    tesseract-ocr-ind \
    tesseract-ocr-isl \
    tesseract-ocr-ita \
    tesseract-ocr-jav \
    tesseract-ocr-jpn \
    tesseract-ocr-kan \
    tesseract-ocr-kat \
    tesseract-ocr-kaz \
    tesseract-ocr-khm \
    tesseract-ocr-kir \
    tesseract-ocr-kor \
    tesseract-ocr-kur \
    tesseract-ocr-lao \
    tesseract-ocr-lat \
    tesseract-ocr-lav \
    tesseract-ocr-lit \
    tesseract-ocr-mal \
    tesseract-ocr-mar \
    tesseract-ocr-mkd \
    tesseract-ocr-mlt \
    tesseract-ocr-msa \
    tesseract-ocr-mya \
    tesseract-ocr-nep \
    tesseract-ocr-nld \
    tesseract-ocr-nor \
    tesseract-ocr-ori \
    tesseract-ocr-pan \
    tesseract-ocr-pol \
    tesseract-ocr-por \
    tesseract-ocr-pus \
    tesseract-ocr-ron \
    tesseract-ocr-rus \
    tesseract-ocr-san \
    tesseract-ocr-sin \
    tesseract-ocr-slk \
    tesseract-ocr-slv \
    tesseract-ocr-spa \
    tesseract-ocr-sqi \
    tesseract-ocr-srp \
    tesseract-ocr-swa \
    tesseract-ocr-swe \
    tesseract-ocr-syr \
    tesseract-ocr-tam \
    tesseract-ocr-tel \
    tesseract-ocr-tgk \
    tesseract-ocr-tgl \
    tesseract-ocr-tha \
    tesseract-ocr-tir \
    tesseract-ocr-tur \
    tesseract-ocr-uig \
    tesseract-ocr-ukr \
    tesseract-ocr-urd \
    tesseract-ocr-uzb \
    tesseract-ocr-vie \
    tesseract-ocr-yid \
    antiword \
  # Clean up
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 3000
RUN npm install -g nodemon
WORKDIR /home/node/app
COPY ./ /home/node/app
CMD [ "node", "index.js" ]