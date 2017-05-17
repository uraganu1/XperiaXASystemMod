.class Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoader;
.super Landroid/content/CursorLoader;
.source "FavoritesViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FavoritesLoader"
.end annotation


# static fields
.field private static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field private static final CONTACT_IN_VISIBLE_GROUP_COLUMN_INDEX:I = 0x3

.field private static final CONTACT_NAME_COLUMN_INDEX:I = 0x1

.field private static final CONTACT_PHOTO_URI_COLUMN_INDEX:I = 0x2

.field private static final CONTACT_PRESENCE_COLUMN_INDEX:I = 0x5

.field private static final CONTACT_STATUS_RES_PACKAGE_COLUMN_INDEX:I = 0x4

.field static final FAVORITES_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1089
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 1090
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1091
    const-string/jumbo v1, "photo_uri"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "in_visible_group"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 1092
    const-string/jumbo v1, "contact_status_res_package"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1093
    const-string/jumbo v1, "contact_presence"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1089
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoader;->FAVORITES_PROJECTION:[Ljava/lang/String;

    .line 1087
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1109
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/FavoritesViewFragment$FavoritesLoader;->FAVORITES_PROJECTION:[Ljava/lang/String;

    .line 1110
    const-string/jumbo v4, "starred=1"

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    .line 1109
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    return-void
.end method
