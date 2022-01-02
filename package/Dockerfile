FROM mongo

COPY ./mongo.key /data/key/replica-set.key

RUN chown mongodb:mongodb /data/key/replica-set.key \
    && chmod 400 /data/key/replica-set.key

