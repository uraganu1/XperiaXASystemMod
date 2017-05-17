.class public Lcom/sonymobile/generativeartwork/settings/LayerSettings;
.super Ljava/lang/Object;
.source "LayerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
    }
.end annotation


# static fields
.field private static synthetic -com_sonymobile_generativeartwork_settings_LayerSettings$ItemSwitchesValues:[I


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom_sonymobile_generativeartwork_settings_LayerSettings$ItemSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->-com_sonymobile_generativeartwork_settings_LayerSettings$ItemSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->-com_sonymobile_generativeartwork_settings_LayerSettings$ItemSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->values()[Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->-com_sonymobile_generativeartwork_settings_LayerSettings$ItemSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method private validate(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x3

    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, "result":Z
    const/4 v2, 0x0

    .line 95
    .local v2, "isArrayType":Z
    const/4 v3, 0x0

    .line 96
    .local v3, "requestedLength":I
    const/4 v0, 0x0

    .line 97
    .local v0, "actualLength":I
    const/4 v1, 0x0

    .line 100
    .local v1, "example":Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 101
    return v4

    .line 104
    :cond_0
    invoke-static {}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->-getcom_sonymobile_generativeartwork_settings_LayerSettings$ItemSwitchesValues()[I

    move-result-object v8

    invoke-virtual {p1}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 151
    .end local v1    # "example":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 152
    if-eqz v2, :cond_2

    .line 153
    if-lt v0, v3, :cond_1

    .line 154
    const/4 v4, 0x1

    .line 161
    :cond_1
    :goto_1
    return v4

    .line 110
    .restart local v1    # "example":Ljava/lang/Object;
    :pswitch_0
    new-instance v1, Ljava/lang/Float;

    .end local v1    # "example":Ljava/lang/Object;
    const-wide/16 v8, 0x0

    invoke-direct {v1, v8, v9}, Ljava/lang/Float;-><init>(D)V

    .line 111
    .restart local v1    # "example":Ljava/lang/Object;
    goto :goto_0

    .line 114
    :pswitch_1
    new-array v7, v10, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 115
    .local v7, "type":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    move-object v1, v7

    .line 116
    const/4 v2, 0x1

    .line 117
    array-length v3, v7

    move-object v8, p2

    .line 118
    check-cast v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    array-length v0, v8

    goto :goto_0

    .line 123
    .end local v7    # "type":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    :pswitch_2
    new-array v5, v10, [F

    .line 124
    .local v5, "type":[F
    move-object v1, v5

    .line 125
    const/4 v2, 0x1

    .line 126
    array-length v3, v5

    move-object v8, p2

    .line 127
    check-cast v8, [F

    array-length v0, v8

    goto :goto_0

    .line 132
    .end local v5    # "type":[F
    :pswitch_3
    const/4 v8, 0x2

    new-array v7, v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    .line 133
    .restart local v7    # "type":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    move-object v1, v7

    .line 134
    const/4 v2, 0x1

    .line 135
    array-length v3, v7

    move-object v8, p2

    .line 136
    check-cast v8, [Lcom/sonymobile/generativeartwork/settings/ColorSettings;

    array-length v0, v8

    goto :goto_0

    .line 141
    .end local v7    # "type":[Lcom/sonymobile/generativeartwork/settings/ColorSettings;
    :pswitch_4
    const/4 v8, 0x1

    new-array v6, v8, [I

    .line 142
    .local v6, "type":[I
    move-object v1, v6

    .line 143
    const/4 v2, 0x1

    .line 144
    array-length v3, v6

    move-object v8, p2

    .line 145
    check-cast v8, [I

    array-length v0, v8

    goto :goto_0

    .line 157
    .end local v1    # "example":Ljava/lang/Object;
    .end local v6    # "type":[I
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public add(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public get(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validateKey(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;)V
    .locals 4
    .param p1, "key"    # Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "testObj":Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/generativeartwork/settings/LayerSettings;->validate(Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The object of key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not acceptable for such key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0    # "testObj":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The object for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not presented in the map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .restart local v0    # "testObj":Ljava/lang/Object;
    :cond_1
    return-void
.end method
