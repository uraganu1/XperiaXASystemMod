.class public interface abstract Lcom/sonymobile/jms/file/ImFileApi;
.super Ljava/lang/Object;
.source "ImFileApi.java"


# virtual methods
.method public abstract asImFile(Landroid/net/Uri;)Lcom/sonymobile/jms/file/ImFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;
        }
    .end annotation
.end method

.method public abstract getRecommendedScaleFactor(Landroid/net/Uri;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToDecodeImageException;
        }
    .end annotation
.end method

.method public abstract isFileBiggerThanMaxSize(Landroid/net/Uri;)Z
.end method

.method public abstract isFileBiggerThanWarnSize(Landroid/net/Uri;)Z
.end method

.method public abstract resizeImage(Landroid/net/Uri;I)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/jms/file/UnableToExtractFileInformationException;,
            Lcom/sonymobile/jms/file/UnableToResizeImageException;
        }
    .end annotation
.end method
