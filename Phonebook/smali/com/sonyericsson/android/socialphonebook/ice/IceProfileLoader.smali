.class public Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;
.super Landroid/content/CursorLoader;
.source "IceProfileLoader.java"


# static fields
.field private static final ICE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 17
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 18
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 16
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;->ICE_PROJECTION:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 22
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ice/IceProfileLoader;->ICE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    .locals 7
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "profile":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 30
    const-string/jumbo v6, "_id"

    .line 29
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 32
    .local v1, "profileId":J
    const-string/jumbo v6, "display_name"

    .line 31
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "photo_id"

    .line 33
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 35
    .local v4, "photoId":J
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    .end local v0    # "profile":Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;-><init>(JLjava/lang/String;J)V

    .line 38
    .end local v1    # "profileId":J
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "photoId":J
    :cond_0
    return-object v0
.end method
