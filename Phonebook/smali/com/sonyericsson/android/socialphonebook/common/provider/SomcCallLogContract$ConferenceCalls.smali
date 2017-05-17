.class public final Lcom/sonyericsson/android/socialphonebook/common/provider/SomcCallLogContract$ConferenceCalls;
.super Ljava/lang/Object;
.source "SomcCallLogContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/common/provider/SomcCallLogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConferenceCalls"
.end annotation


# static fields
.field public static final CONTACT_NAMES:Ljava/lang/String; = "contact_names"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DELIMITER:C = '\uffff'

.field public static final NUMBERS:Ljava/lang/String; = "numbers"

.field public static final NUMBER_PRESENTATIONS:Ljava/lang/String; = "number_presentations"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    .line 34
    const-string/jumbo v1, "conference_calls"

    .line 33
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/common/provider/SomcCallLogContract$ConferenceCalls;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
