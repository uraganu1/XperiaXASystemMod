.class public Lcom/sonyericsson/music/Playback$PlaybackIntent;
.super Ljava/lang/Object;
.source "Playback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/Playback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackIntent"
.end annotation


# static fields
.field private static final SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.sonyericsson.music"

    const-string/jumbo v2, "com.sonyericsson.music.proxyservice.ProxyService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/music/Playback$PlaybackIntent;->SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static final getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    sget-object v1, Lcom/sonyericsson/music/Playback$PlaybackIntent;->SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    return-object v0
.end method
