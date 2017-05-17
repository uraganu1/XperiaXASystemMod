.class public final Lcom/sonyericsson/android/socialphonebook/CallItemsContract;
.super Ljava/lang/Object;
.source "CallItemsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallColumns;,
        Lcom/sonyericsson/android/socialphonebook/CallItemsContract$DataColumns;,
        Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CachedColumns;,
        Lcom/sonyericsson/android/socialphonebook/CallItemsContract$CallItems;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.callitems"

.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "content://com.sonymobile.callitems"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/CallItemsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
