.class public Lcom/mediatek/systemui/ext/DefaultQuickSettingsPlugin;
.super Landroid/content/ContextWrapper;
.source "DefaultQuickSettingsPlugin.java"

# interfaces
.implements Lcom/mediatek/systemui/ext/IQuickSettingsPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultQuickSettingsPlugin"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/mediatek/systemui/ext/DefaultQuickSettingsPlugin;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public customizeAddQSTile(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "qsTile"    # Ljava/lang/Object;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public customizeApnSettingsTile(ZLcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    .param p3, "orgLabelStr"    # Ljava/lang/String;

    .prologue
    .line 65
    return-object p3
.end method

.method public customizeDataConnectionTile(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "dataState"    # I
    .param p2, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    .param p3, "orgLabelStr"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v0, "DefaultQuickSettingsPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customizeDataConnectionTile, icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", orgLabelStr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-object p3
.end method

.method public customizeDisplayDataUsage(Z)Z
    .locals 3
    .param p1, "isDisplay"    # Z

    .prologue
    .line 29
    const-string/jumbo v0, "DefaultQuickSettingsPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customizeDisplayDataUsage, return isDisplay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return p1
.end method

.method public customizeDualSimSettingsTile(ZLcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    .param p3, "labelStr"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string/jumbo v0, "DefaultQuickSettingsPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customizeDualSimSettingsTile, enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    const-string/jumbo v2, " labelStr="

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object p3
.end method

.method public customizeQuickSettingsTileOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 35
    return-object p1
.end method

.method public customizeSimDataConnectionTile(ILcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 60
    const-string/jumbo v0, "DefaultQuickSettingsPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customizeSimDataConnectionTile, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
