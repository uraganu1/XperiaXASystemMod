.class public Lcom/mediatek/settings/ext/IWifiExt$Builder;
.super Ljava/lang/Object;
.source "IWifiExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/ext/IWifiExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mEdit:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method public getEdit()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mEdit:Z

    return v0
.end method

.method public getViews()Landroid/view/View;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 126
    return-object p0
.end method

.method public setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mEdit:Z

    .line 135
    return-object p0
.end method

.method public setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/settings/ext/IWifiExt$Builder;->mView:Landroid/view/View;

    .line 143
    return-object p0
.end method
