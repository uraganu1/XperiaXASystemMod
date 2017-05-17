.class public Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
.super Ljava/lang/Object;
.source "IceContactData.java"


# instance fields
.field private final mContactId:J

.field private final mContactName:Ljava/lang/String;

.field private final mContactUri:Landroid/net/Uri;

.field private final mPhotoId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 1
    .param p1, "contactId"    # J
    .param p3, "contactName"    # Ljava/lang/String;
    .param p4, "photoId"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->mContactId:J

    .line 29
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->mContactName:Ljava/lang/String;

    .line 30
    iput-wide p4, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->mPhotoId:J

    .line 31
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->mContactUri:Landroid/net/Uri;

    .line 27
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->mContactId:J

    return-wide v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->mContactName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->mPhotoId:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method
