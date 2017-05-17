.class public Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;
.super Ljava/lang/Object;
.source "VoIPCallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/provider/VoIPCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoIPCalls"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.sonyericsson.android.voip_call"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/sonyericsson/provider/VoIPCallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "calls"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/provider/VoIPCallLog$VoIPCalls;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
