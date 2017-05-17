.class public Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;
.super Ljava/lang/Object;
.source "SpeedDialContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "somc_speeddial"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/speeddial_somc"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/speeddial_somc"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ID:Ljava/lang/String; = "data_id"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PHONE_NUMBER_LABEL:Ljava/lang/String; = "phone_number_label"

.field public static final PHONE_NUMBER_TYPE:Ljava/lang/String; = "phone_number_type"

.field public static final PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field public static final POSITION:Ljava/lang/String; = "position"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "content://somc_speeddial/speeddial_somc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSpeedDialIdUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 94
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildSpeedDialLookupUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "position"    # J

    .prologue
    .line 105
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/common/provider/SpeedDialContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "lookup"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "position"

    .line 105
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
