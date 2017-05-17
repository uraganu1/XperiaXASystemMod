.class public final Lcom/sonymobile/generativeartwork/settings/ColorSettings;
.super Ljava/lang/Object;
.source "ColorSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/settings/ColorSettings$1;,
        Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;,
        Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;,
        Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;,
        Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->mData:Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method private static component2index(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;)I
    .locals 2
    .param p0, "component"    # Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    .prologue
    .line 137
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/ColorSettings$1;->$SwitchMap$com$sonymobile$generativeartwork$settings$ColorSettings$Component:[I

    invoke-virtual {p0}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid color settings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    .line 139
    return v0

    :pswitch_1
    const/4 v0, 0x1

    .line 141
    return v0

    :pswitch_2
    const/4 v0, 0x2

    .line 144
    return v0

    :pswitch_3
    const/4 v0, 0x3

    .line 146
    return v0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static convertIntToFloat(I[F)V
    .locals 3
    .param p0, "inColor"    # I
    .param p1, "outColor"    # [F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v0, 0x0

    .line 155
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 156
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 157
    shr-int/lit8 v1, p0, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, p1, v0

    .line 158
    return-void
.end method


# virtual methods
.method public add(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V
    .locals 2
    .param p1, "model"    # Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;
    .param p2, "component"    # Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;
    .param p3, "op"    # Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;
    .param p4, "value"    # F

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->mData:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;-><init>(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public transform(I[F)[F
    .locals 9
    .param p1, "rgba"    # I
    .param p2, "outColor"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 87
    if-eqz p2, :cond_0

    .line 90
    :goto_0
    array-length v3, p2

    if-lt v3, v8, :cond_1

    const/4 v3, 0x3

    .line 93
    aput v4, p2, v3

    const/4 v3, 0x2

    aput v4, p2, v3

    const/4 v3, 0x1

    aput v4, p2, v3

    aput v4, p2, v7

    .line 95
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->Opacity:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    invoke-static {v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->component2index(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;)I

    move-result v3

    aput v5, p2, v3

    .line 96
    iget-object v3, p0, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    invoke-static {p1, p2}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->convertIntToFloat(I[F)V

    .line 126
    return-object p2

    .line 88
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    new-array p2, v8, [F

    goto :goto_0

    .line 91
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "4 components required for rgba"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;

    .line 97
    .local v2, "item":Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$1;->$SwitchMap$com$sonymobile$generativeartwork$settings$ColorSettings$Model:[I

    iget-object v4, v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mModel:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;

    invoke-virtual {v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Model;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 100
    :pswitch_0
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 101
    iget-object v3, v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mCmp:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    invoke-static {v3}, Lcom/sonymobile/generativeartwork/settings/ColorSettings;->component2index(Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;)I

    move-result v1

    .line 102
    .local v1, "idx":I
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$1;->$SwitchMap$com$sonymobile$generativeartwork$settings$ColorSettings$Op:[I

    iget-object v4, v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mOp:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;

    invoke-virtual {v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Op;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 113
    :goto_2
    sget-object v3, Lcom/sonymobile/generativeartwork/settings/ColorSettings$1;->$SwitchMap$com$sonymobile$generativeartwork$settings$ColorSettings$Component:[I

    iget-object v4, v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mCmp:Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;

    invoke-virtual {v4}, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Component;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    .line 120
    :goto_3
    invoke-static {p2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    goto :goto_1

    .line 104
    :pswitch_1
    iget v3, v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mValue:F

    aput v3, p2, v1

    goto :goto_2

    .line 107
    :pswitch_2
    aget v3, p2, v1

    iget v4, v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mValue:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    aput v3, p2, v1

    goto :goto_2

    .line 110
    :pswitch_3
    aget v3, p2, v1

    iget v4, v2, Lcom/sonymobile/generativeartwork/settings/ColorSettings$Data;->mValue:F

    mul-float/2addr v3, v4

    aput v3, p2, v1

    goto :goto_2

    .line 115
    :pswitch_4
    aget v3, p2, v1

    add-float/2addr v3, v6

    rem-float/2addr v3, v6

    aput v3, p2, v1

    goto :goto_3

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 113
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method
