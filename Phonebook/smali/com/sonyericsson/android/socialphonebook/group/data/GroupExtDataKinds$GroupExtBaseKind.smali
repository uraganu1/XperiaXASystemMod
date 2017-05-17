.class Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;
.super Ljava/lang/Object;
.source "GroupExtDataKinds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupExtBaseKind"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final URI_PATH_GROUP_DATA:Ljava/lang/String; = "semc_data"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 33
    const-string/jumbo v1, "semc_data"

    .line 32
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;->CONTENT_URI:Landroid/net/Uri;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;-><init>()V

    return-void
.end method

.method public static createUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static createUri(J)Landroid/net/Uri;
    .locals 4
    .param p0, "groupId"    # J

    .prologue
    .line 40
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 41
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 42
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 43
    const-string/jumbo v1, "semc_data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 46
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupExtBaseKind;->CONTENT_URI:Landroid/net/Uri;

    return-object v1
.end method
