.class public Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;
.super Lcom/android/systemui/qs/QSTile$Icon;
.source "QsIconWrapper.java"


# instance fields
.field private final mIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;


# direct methods
.method public constructor <init>(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 0
    .param p1, "iconWrapper"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$Icon;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;->mIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;->mIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-virtual {v0, p1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;->mIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-virtual {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/systemui/qs/tiles/ext/QsIconWrapper;->mIconWrapper:Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    invoke-virtual {v0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->hashCode()I

    move-result v0

    return v0
.end method
