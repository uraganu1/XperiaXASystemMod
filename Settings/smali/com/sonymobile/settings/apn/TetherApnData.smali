.class public Lcom/sonymobile/settings/apn/TetherApnData;
.super Ljava/lang/Object;
.source "TetherApnData.java"


# instance fields
.field private final mApnData:[Ljava/lang/String;

.field private final mIsTetherDunRequired:Z

.field private mIsTetherDunValid:Z

.field private mTypeArrayAsString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 25
    .param p1, "isTetherDunRequired"    # Z
    .param p2, "apnDataString"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    .line 30
    const/16 v21, 0x1a

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    .line 85
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/settings/apn/TetherApnData;->mIsTetherDunRequired:Z

    .line 86
    move-object/from16 v5, p2

    .line 88
    .local v5, "apnData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, ""

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    if-eqz v5, :cond_0

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string/jumbo v21, "^\\[ApnSettingV3\\]\\s*.*"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 95
    const/16 v19, 0x3

    .line 96
    .local v19, "version":I
    const-string/jumbo v21, "^\\[ApnSettingV3\\]\\s*"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    :goto_1
    const-string/jumbo v21, "\\s*,\\s*"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "a":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v21, v0

    const/16 v22, 0xe

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 106
    return-void

    .line 97
    .end local v4    # "a":[Ljava/lang/String;
    .end local v19    # "version":I
    :cond_2
    const-string/jumbo v21, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 98
    const/16 v19, 0x2

    .line 99
    .restart local v19    # "version":I
    const-string/jumbo v21, "^\\[ApnSettingV2\\]\\s*"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 101
    .end local v19    # "version":I
    :cond_3
    const/16 v19, 0x1

    .restart local v19    # "version":I
    goto :goto_1

    .line 113
    .restart local v4    # "a":[Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 114
    .local v6, "bearerBitmask":I
    const/16 v16, 0x0

    .line 115
    .local v16, "profileId":I
    const/4 v12, 0x0

    .line 116
    .local v12, "modemCognitive":Z
    const/4 v10, 0x0

    .line 117
    .local v10, "maxConns":I
    const/16 v20, 0x0

    .line 118
    .local v20, "waitTime":I
    const/4 v11, 0x0

    .line 119
    .local v11, "maxConnsTime":I
    const/4 v13, 0x0

    .line 120
    .local v13, "mtu":I
    const-string/jumbo v15, ""

    .line 121
    .local v15, "mvnoType":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 122
    .local v14, "mvnoMatchData":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 123
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sonymobile/settings/apn/TetherApnData;->getTypeArrayAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 124
    const-string/jumbo v17, "IP"

    .line 125
    .local v17, "protocol":Ljava/lang/String;
    const-string/jumbo v18, "IP"

    .line 126
    .local v18, "roamingProtocol":Ljava/lang/String;
    const/4 v7, 0x1

    .line 169
    .end local v12    # "modemCognitive":Z
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xd

    move/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0xe

    aput-object v17, v21, v22

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0xf

    aput-object v18, v21, v22

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    aput-object v22, v21, v23

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x11

    aput-object v22, v21, v23

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x12

    aput-object v22, v21, v23

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x13

    aput-object v22, v21, v23

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x14

    aput-object v22, v21, v23

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x15

    aput-object v22, v21, v23

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x16

    aput-object v22, v21, v23

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x17

    aput-object v22, v21, v23

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x18

    aput-object v15, v21, v22

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x19

    aput-object v14, v21, v22

    .line 182
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sonymobile/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    goto/16 :goto_0

    .line 128
    .end local v17    # "protocol":Ljava/lang/String;
    .end local v18    # "roamingProtocol":Ljava/lang/String;
    .restart local v12    # "modemCognitive":Z
    :cond_6
    array-length v0, v4

    move/from16 v21, v0

    const/16 v22, 0x12

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 129
    return-void

    .line 131
    :cond_7
    const/16 v21, 0xd

    aget-object v21, v4, v21

    const-string/jumbo v22, "|"

    const-string/jumbo v23, ","

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 132
    const/16 v21, 0xe

    aget-object v17, v4, v21

    .line 133
    .restart local v17    # "protocol":Ljava/lang/String;
    const/16 v21, 0xf

    aget-object v18, v4, v21

    .line 135
    .restart local v18    # "roamingProtocol":Ljava/lang/String;
    const/16 v21, 0x10

    :try_start_0
    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 140
    :goto_3
    const/16 v21, 0x11

    :try_start_1
    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    .line 144
    :goto_4
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 145
    array-length v0, v4

    move/from16 v21, v0

    const/16 v22, 0x16

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 146
    const/16 v21, 0x13

    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 148
    .local v12, "modemCognitive":Z
    const/16 v21, 0x12

    :try_start_2
    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 149
    const/16 v21, 0x14

    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 150
    const/16 v21, 0x15

    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 151
    const/16 v21, 0x16

    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 156
    .end local v12    # "modemCognitive":Z
    :cond_8
    :goto_5
    array-length v0, v4

    move/from16 v21, v0

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 158
    const/16 v21, 0x17

    :try_start_3
    aget-object v21, v4, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v13

    .line 163
    :cond_9
    :goto_6
    array-length v0, v4

    move/from16 v21, v0

    const/16 v22, 0x19

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 164
    const/16 v21, 0x18

    aget-object v15, v4, v21

    .line 165
    const/16 v21, 0x19

    aget-object v14, v4, v21

    goto/16 :goto_2

    .line 136
    .local v12, "modemCognitive":Z
    :catch_0
    move-exception v8

    .line 137
    .local v8, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    .local v7, "carrierEnabled":Z
    goto :goto_3

    .line 159
    .end local v7    # "carrierEnabled":Z
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v12    # "modemCognitive":Z
    :catch_1
    move-exception v9

    .local v9, "e":Ljava/lang/NumberFormatException;
    goto :goto_6

    .line 152
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .local v12, "modemCognitive":Z
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    goto :goto_5

    .line 141
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .local v12, "modemCognitive":Z
    :catch_3
    move-exception v9

    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    goto :goto_4
.end method

.method public static arrayFromString(ZLjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "isTetherDunRequired"    # Z
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/apn/TetherApnData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v3, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/apn/TetherApnData;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    return-object v3

    .line 471
    :cond_0
    const-string/jumbo v4, "\\s*;\\s*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "apnStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 473
    .local v1, "apnString":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/settings/apn/TetherApnData;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/apn/TetherApnData;-><init>(ZLjava/lang/String;)V

    .line 474
    .local v0, "apn":Lcom/sonymobile/settings/apn/TetherApnData;
    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "apn":Lcom/sonymobile/settings/apn/TetherApnData;
    .end local v1    # "apnString":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static arrayFromStringArray(Z[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "isTetherDunRequired"    # Z
    .param p1, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/apn/TetherApnData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v2, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/apn/TetherApnData;>;"
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 485
    :cond_0
    return-object v2

    .line 488
    :cond_1
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, p1, v3

    .line 489
    .local v1, "apnString":Ljava/lang/String;
    new-instance v0, Lcom/sonymobile/settings/apn/TetherApnData;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/apn/TetherApnData;-><init>(ZLjava/lang/String;)V

    .line 490
    .local v0, "apn":Lcom/sonymobile/settings/apn/TetherApnData;
    if-eqz v0, :cond_2

    .line 491
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "apn":Lcom/sonymobile/settings/apn/TetherApnData;
    .end local v1    # "apnString":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method private getTypeArrayAsString([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "a"    # [Ljava/lang/String;

    .prologue
    const/16 v5, 0xd

    .line 303
    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    const/4 v3, 0x0

    return-object v3

    .line 307
    :cond_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0xd

    new-array v1, v3, [Ljava/lang/String;

    .line 309
    .local v1, "typeArray":[Ljava/lang/String;
    array-length v3, p1

    add-int/lit8 v3, v3, -0xd

    const/4 v4, 0x0

    .line 308
    invoke-static {p1, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .local v2, "types":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 313
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 315
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static stringFromArray(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/settings/apn/TetherApnData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "apnArray":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/settings/apn/TetherApnData;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/apn/TetherApnData;

    .line 500
    .local v0, "apn":Lcom/sonymobile/settings/apn/TetherApnData;
    invoke-virtual {v0}, Lcom/sonymobile/settings/apn/TetherApnData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 503
    .end local v0    # "apn":Lcom/sonymobile/settings/apn/TetherApnData;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 535
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 536
    :cond_0
    instance-of v0, p1, Lcom/sonymobile/settings/apn/TetherApnData;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/apn/TetherApnData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getApn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAuthType()I
    .locals 3

    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method public getBearerBitmask()I
    .locals 3

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method public getCarrierEnabled()Z
    .locals 3

    .prologue
    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method public getMcc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMmsc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMvnoMatchData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMvnoType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProxy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRoamingProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTypeArray()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/sonymobile/settings/apn/TetherApnData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isTetherDunValid()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mIsTetherDunValid:Z

    return v0
.end method

.method public setApn(Ljava/lang/String;)V
    .locals 2
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 370
    return-void
.end method

.method public setAuthType(I)V
    .locals 3
    .param p1, "authType"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 414
    return-void
.end method

.method public setBearerBitmask(I)V
    .locals 3
    .param p1, "bearerBitmask"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 454
    return-void
.end method

.method public setCarrierEnabled(Z)V
    .locals 3
    .param p1, "carrierEnabled"    # Z

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 445
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 2
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    .line 406
    return-void
.end method

.method public setMmsPort(Ljava/lang/String;)V
    .locals 2
    .param p1, "mmsPort"    # Ljava/lang/String;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    .line 402
    return-void
.end method

.method public setMmsProxy(Ljava/lang/String;)V
    .locals 2
    .param p1, "mmsProxy"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    .line 398
    return-void
.end method

.method public setMmsc(Ljava/lang/String;)V
    .locals 2
    .param p1, "mmsc"    # Ljava/lang/String;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 394
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .locals 2
    .param p1, "mnc"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    .line 410
    return-void
.end method

.method public setMvnoMatchData(Ljava/lang/String;)V
    .locals 2
    .param p1, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x19

    aput-object p1, v0, v1

    .line 462
    return-void
.end method

.method public setMvnoType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mvnoType"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0x18

    aput-object p1, v0, v1

    .line 458
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 366
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    .line 386
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 2
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 378
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    .line 427
    return-void
.end method

.method public setProxy(Ljava/lang/String;)V
    .locals 2
    .param p1, "proxy"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 374
    return-void
.end method

.method public setRoamingProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "roamingProtocol"    # Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v1, 0xf

    aput-object p1, v0, v1

    .line 436
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x6

    aput-object p1, v0, v1

    .line 390
    return-void
.end method

.method public setTypeArray(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeArrayAsString"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[ApnSettingV3] "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 515
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mTypeArrayAsString:Ljava/lang/String;

    const-string/jumbo v3, ","

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    iget-object v2, p0, Lcom/sonymobile/settings/apn/TetherApnData;->mApnData:[Ljava/lang/String;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
