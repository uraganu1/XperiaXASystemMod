.class public Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
.super Ljava/lang/Object;
.source "IconIdWrapper.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mIconId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>(Landroid/content/res/Resources;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;-><init>(Landroid/content/res/Resources;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    .line 35
    iput-object p1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    .line 36
    iput p2, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    .line 34
    return-void
.end method


# virtual methods
.method public clone()Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    .locals 4

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 73
    .local v1, "clone":Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    move-object v1, v0

    .line 74
    .local v1, "clone":Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    iget-object v3, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    iput-object v3, v1, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    .line 75
    iget v3, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    iput v3, v1, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "clone":Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    .local v1, "clone":Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->clone()Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;)V
    .locals 1
    .param p1, "icon"    # Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .prologue
    .line 131
    iget-object v0, p1, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    .line 132
    iget v0, p1, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    iput v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    .line 130
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    if-ne p0, p1, :cond_0

    .line 103
    return v4

    .line 105
    :cond_0
    if-nez p1, :cond_1

    .line 106
    return v3

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 109
    return v3

    :cond_2
    move-object v0, p1

    .line 111
    check-cast v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;

    .line 112
    .local v0, "other":Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;
    iget v1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    iget v2, v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    if-eq v1, v2, :cond_3

    .line 113
    return v3

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_4

    .line 116
    iget-object v1, v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_5

    .line 117
    return v3

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    iget-object v2, v0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 120
    return v3

    .line 122
    :cond_5
    return v4
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    return-object v1
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 93
    const/16 v0, 0x1f

    .line 95
    .local v0, "prime":I
    iget v2, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    add-int/lit8 v1, v2, 0x1f

    .line 96
    .local v1, "result":I
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 97
    return v1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setIconId(I)V
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    .line 51
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mResources:Landroid/content/res/Resources;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IconIdWrapper [mResources == null, mIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IconIdWrapper [mResources != null, mIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/systemui/statusbar/extcb/IconIdWrapper;->mIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
