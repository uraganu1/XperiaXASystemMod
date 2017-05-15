.class public Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;
.super Ljava/lang/Object;
.source "DefaultDataUsageSummaryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IDataUsageSummaryExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "mobileDataEnabled":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    return-void
.end method

.method public customizeBackgroundString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "defStr"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 18
    return-object p1
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public needToShowDialog()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentTab(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 36
    return-void
.end method

.method public setDataEnableClickListener(Landroid/app/Activity;Landroid/view/View;Landroid/widget/Switch;Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dataEnabledView"    # Landroid/view/View;
    .param p3, "dataEnabled"    # Landroid/widget/Switch;
    .param p4, "dataEnabledDialogListerner"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method
