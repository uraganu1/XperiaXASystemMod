.class Lcom/mediatek/hdmi/HdmiSettings$1;
.super Landroid/database/ContentObserver;
.source "HdmiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/HdmiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/HdmiSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/HdmiSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/hdmi/HdmiSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings$1;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 50
    const-string/jumbo v0, "@M_HDMISettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHdmiSettingsObserver onChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings$1;->this$0:Lcom/mediatek/hdmi/HdmiSettings;

    invoke-static {v0}, Lcom/mediatek/hdmi/HdmiSettings;->-wrap0(Lcom/mediatek/hdmi/HdmiSettings;)V

    .line 49
    return-void
.end method
