.class public Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;
.super Landroid/content/CursorLoader;
.source "IceContactsLoader.java"


# static fields
.field private static final ICE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 23
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 24
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 22
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;->ICE_PROJECTION:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 28
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContacts;->CONTENT_ICE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;->ICE_PROJECTION:[Ljava/lang/String;

    .line 29
    const-string/jumbo v6, "display_name"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    .line 28
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private static getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 39
    const-string/jumbo v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 41
    .local v1, "contactId":J
    const-string/jumbo v0, "display_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 40
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v0, "photo_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 42
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 44
    .local v4, "photoId":J
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;-><init>(JLjava/lang/String;J)V

    return-object v0
.end method

.method public static getContactsInfo(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "contactsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;>;"
    if-eqz p0, :cond_1

    .line 56
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceContactsLoader;->getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/ice/IceContactData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    :cond_1
    return-object v0
.end method
