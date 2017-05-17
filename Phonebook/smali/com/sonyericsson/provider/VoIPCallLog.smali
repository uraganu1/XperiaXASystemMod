.class public Lcom/sonyericsson/provider/VoIPCallLog;
.super Ljava/lang/Object;
.source "VoIPCallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.voip_call_log"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PERMISSION:Ljava/lang/String; = "com.sonyericsson.permission.VOIPCALLLOG"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.sonyericsson.voip_call_log"

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/VoIPCallLog;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method
