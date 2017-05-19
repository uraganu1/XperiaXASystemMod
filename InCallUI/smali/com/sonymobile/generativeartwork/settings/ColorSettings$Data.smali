.class Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;
.super Ljava/lang/Object;
.source "ColorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/settings/ColorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field final mCmp:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

.field final mModel:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

.field final mOp:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

.field final mValue:F


# direct methods
.method public constructor <init>(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V
    .locals 0
    .param p1, "model"    # Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;
    .param p2, "cmp"    # Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;
    .param p3, "op"    # Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;
    .param p4, "value"    # F

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mModel:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    .line 57
    iput-object p3, p0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mOp:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    .line 58
    iput-object p2, p0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mCmp:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    .line 59
    iput p4, p0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mValue:F

    .line 55
    return-void
.end method
