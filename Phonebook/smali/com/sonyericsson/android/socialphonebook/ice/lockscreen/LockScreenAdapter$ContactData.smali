.class public Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;
.super Ljava/lang/Object;
.source "LockScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactData"
.end annotation


# instance fields
.field private final mContactData:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

.field private final mPhoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/util/List;)V
    .locals 6
    .param p1, "contactId"    # J
    .param p3, "contactName"    # Ljava/lang/String;
    .param p4, "photoId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p6, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;-><init>(JLjava/lang/String;J)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->mContactData:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 113
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->mContactData:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->mContactData:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getContactName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->mPhoneNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneNumbersCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->mContactData:Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->getPhotoId()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPhoneNumbers()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
