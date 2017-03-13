.class public Lcom/mediatek/systemui/ext/DefaultStatusBarPlmnPlugin;
.super Landroid/content/ContextWrapper;
.source "DefaultStatusBarPlmnPlugin.java"

# interfaces
.implements Lcom/mediatek/systemui/ext/IStatusBarPlmnPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultStatusBarPlmnPlugin"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addPlmn(Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 2
    .param p1, "statusBarContents"    # Landroid/widget/LinearLayout;
    .param p2, "contx"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v0, "DefaultStatusBarPlmnPlugin"

    const-string/jumbo v1, "into addPlmn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public customizeCarrierLabel(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "orgCarrierLabel"    # Landroid/view/View;

    .prologue
    .line 34
    const-string/jumbo v0, "DefaultStatusBarPlmnPlugin"

    const-string/jumbo v1, "into customizeCarrierLabel: null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPlmnVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 58
    const-string/jumbo v0, "DefaultStatusBarPlmnPlugin"

    const-string/jumbo v1, "setPlmnVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public supportCustomizeCarrierLabel()Z
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "DefaultStatusBarPlmnPlugin"

    const-string/jumbo v1, "into supportCustomizeCarrierLabel: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public updateCarrierLabel(IZZ[Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isSimInserted"    # Z
    .param p3, "isHasSimService"    # Z
    .param p4, "networkNames"    # [Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v0, "DefaultStatusBarPlmnPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into updateCarrierLabel, slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 47
    const-string/jumbo v2, ", isSimInserted="

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    const-string/jumbo v2, ", isHasSimService="

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public updateCarrierLabelVisibility(ZZ)V
    .locals 2
    .param p1, "force"    # Z
    .param p2, "makeVisible"    # Z

    .prologue
    .line 40
    const-string/jumbo v0, "DefaultStatusBarPlmnPlugin"

    const-string/jumbo v1, "into updateCarrierLabelVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method
