.class Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$TopContactsLoader;
.super Landroid/content/CursorLoader;
.source "TopContactsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopContactsLoader"
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 177
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "number"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "number_label"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "photo_uri"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "number_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_uri"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 176
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$TopContactsLoader;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 188
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsContract;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/topcontacts/TopContactsListFragment$TopContactsLoader;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method
