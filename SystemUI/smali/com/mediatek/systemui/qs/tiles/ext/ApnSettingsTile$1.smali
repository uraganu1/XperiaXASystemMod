.class Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettingsTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;


# direct methods
.method constructor <init>(Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "ApnSettingsTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive(), action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 191
    .local v1, "enabled":Z
    const-string/jumbo v2, "ApnSettingsTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive(), airline mode changed: state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;

    invoke-static {v2, v1}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->-set0(Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;Z)Z

    .line 193
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;

    invoke-static {v2}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;)V

    .line 183
    .end local v1    # "enabled":Z
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string/jumbo v2, "android.intent.action.ACTION_EF_CSP_CONTENT_NOTIFY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    const-string/jumbo v2, "android.intent.action.MSIM_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 194
    if-nez v2, :cond_2

    .line 196
    const-string/jumbo v2, "android.intent.action.ACTION_MD_TYPE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 194
    if-nez v2, :cond_2

    .line 197
    const-string/jumbo v2, "mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 194
    if-nez v2, :cond_2

    .line 198
    const-string/jumbo v2, "android.intent.action.ACTION_SET_PHONE_RAT_FAMILY_DONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 194
    if-nez v2, :cond_2

    .line 199
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 194
    if-nez v2, :cond_2

    .line 200
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 194
    if-eqz v2, :cond_0

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile$1;->this$0:Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;

    invoke-static {v2}, Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;->-wrap0(Lcom/mediatek/systemui/qs/tiles/ext/ApnSettingsTile;)V

    goto :goto_0
.end method
