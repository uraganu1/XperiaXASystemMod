.class public interface abstract Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;
.super Ljava/lang/Object;
.source "KddiAddressBookUtil.java"


# annotations
.annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddressbookPlusFeatureWrapperForTest"
.end annotation


# virtual methods
.method public abstract getSyncCallIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getSyncCallList()Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isKddiAddressBookFeatureEnabled()Z
.end method

.method public abstract isSyncCallSettingsEnabled()Z
.end method
