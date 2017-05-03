.class Lcom/android/systemui/qs/tiles/SoundTile$1;
.super Landroid/content/BroadcastReceiver;
.source "SoundTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SoundTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/SoundTile;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundTile$1;->this$0:Lcom/android/systemui/qs/tiles/SoundTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundTile;->-wrap0(Lcom/android/systemui/qs/tiles/SoundTile;)V

    .line 46
    return-void
.end method
