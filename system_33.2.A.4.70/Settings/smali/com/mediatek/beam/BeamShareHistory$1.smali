.class Lcom/mediatek/beam/BeamShareHistory$1;
.super Landroid/database/ContentObserver;
.source "BeamShareHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/beam/BeamShareHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/beam/BeamShareHistory;


# direct methods
.method constructor <init>(Lcom/mediatek/beam/BeamShareHistory;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/beam/BeamShareHistory;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/beam/BeamShareHistory$1;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 148
    const-string/jumbo v0, "@M_BeamShareHistory"

    const-string/jumbo v1, "ContentObserver, onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/mediatek/beam/BeamShareHistory$1;->this$0:Lcom/mediatek/beam/BeamShareHistory;

    invoke-static {v0}, Lcom/mediatek/beam/BeamShareHistory;->-get0(Lcom/mediatek/beam/BeamShareHistory;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 147
    return-void
.end method
