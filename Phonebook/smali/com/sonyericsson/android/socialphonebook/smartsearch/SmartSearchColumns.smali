.class public Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns;
.super Ljava/lang/Object;
.source "SmartSearchColumns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns$DigitizedData;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.android.smartsearch"

.field private static final CONTENT_URI_BASE:Landroid/net/Uri;

.field private static final ITEM_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.item/"

.field public static final PERMISSION:Ljava/lang/String; = "com.sonyericsson.permission.SMARTSEARCH"


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns;->CONTENT_URI_BASE:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "content://com.sonyericsson.android.smartsearch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchColumns;->CONTENT_URI_BASE:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
