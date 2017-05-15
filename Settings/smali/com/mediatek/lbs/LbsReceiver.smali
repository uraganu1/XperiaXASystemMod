.class public Lcom/mediatek/lbs/LbsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LbsReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurOperatorCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private dealWithOmaUpdataResult(ZLjava/lang/String;)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deal with OMA CP operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    const/4 v3, 0x1

    .line 286
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 288
    const-string/jumbo v1, "LbsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deal with OMA UP operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "com.mediatek.omacp.settings.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string/jumbo v1, "appId"

    const-string/jumbo v2, "ap0004"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private handleAgpsOmaProfileUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "omacp_profile"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 130
    const-string/jumbo v3, "name"

    .line 131
    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 132
    const-string/jumbo v3, "addr"

    .line 133
    const-string/jumbo v4, "addr"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 134
    const-string/jumbo v3, "port"

    const-string/jumbo v4, "port"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 129
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 135
    const-string/jumbo v3, "tls"

    const-string/jumbo v4, "tls"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 129
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 136
    const-string/jumbo v3, "code"

    .line 137
    const-string/jumbo v4, "code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 138
    const-string/jumbo v3, "addrType"

    .line 139
    const-string/jumbo v4, "addrType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 140
    const-string/jumbo v3, "providerId"

    const-string/jumbo v4, "providerId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 141
    const-string/jumbo v3, "defaultApn"

    const-string/jumbo v4, "defaultApn"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 142
    const-string/jumbo v3, "changed"

    .line 129
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method private handleOmaCpCapability(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 239
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_OMACP_SUPPORT:Z

    if-nez v1, :cond_0

    .line 240
    const-string/jumbo v1, "LbsReceiver"

    const-string/jumbo v2, "handleOmaCpCapability, MTK OMACP NOT SUPPOR "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, "it":Landroid/content/Intent;
    const-string/jumbo v1, "com.mediatek.omacp.capability.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v1, "appId"

    const-string/jumbo v2, "ap0004"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v1, "supl"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string/jumbo v1, "supl_provider_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string/jumbo v1, "supl_server_name"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    const-string/jumbo v1, "supl_to_napid"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string/jumbo v1, "supl_server_addr"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const-string/jumbo v1, "supl_addr_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const-string/jumbo v1, "LbsReceiver"

    const-string/jumbo v2, "Feedback OMA CP capability information"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method private handleOmaCpSetting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    sget-boolean v20, Lcom/mediatek/settings/FeatureOption;->MTK_OMACP_SUPPORT:Z

    if-nez v20, :cond_0

    .line 147
    const-string/jumbo v20, "LbsReceiver"

    const-string/jumbo v21, "handleOmaCpSetting, MTK OMACP NOT SUPPOR "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 150
    :cond_0
    const-string/jumbo v20, "appId"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "appId":Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string/jumbo v20, "ap0004"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 156
    const-string/jumbo v20, "slotId"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 157
    .local v18, "slotId":I
    const-string/jumbo v20, "PROVIDER-ID"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 158
    .local v17, "providerId":Ljava/lang/String;
    const-string/jumbo v20, "NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 159
    .local v19, "slpName":Ljava/lang/String;
    const-string/jumbo v10, ""

    .line 160
    .local v10, "defaultApn":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 161
    .local v4, "address":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 162
    .local v5, "addressType":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 164
    .local v14, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 166
    .local v9, "bundle":Landroid/os/Bundle;
    const-string/jumbo v20, "APPADDR"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 167
    .local v7, "appAddrMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 174
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 175
    :cond_2
    const-string/jumbo v20, "LbsReceiver"

    const-string/jumbo v21, "Invalid oma cp pushed supl address"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string/jumbo v20, "Invalide oma cp pushed supl address"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    .line 177
    return-void

    .line 152
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "addressType":Ljava/lang/String;
    .end local v7    # "appAddrMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v10    # "defaultApn":Ljava/lang/String;
    .end local v14    # "port":Ljava/lang/String;
    .end local v17    # "providerId":Ljava/lang/String;
    .end local v18    # "slotId":I
    .end local v19    # "slpName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v20, "LbsReceiver"

    const-string/jumbo v21, "get the OMA CP broadcast, but it\'s not for AGPS"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 168
    .restart local v4    # "address":Ljava/lang/String;
    .restart local v5    # "addressType":Ljava/lang/String;
    .restart local v7    # "appAddrMapList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "defaultApn":Ljava/lang/String;
    .restart local v14    # "port":Ljava/lang/String;
    .restart local v17    # "providerId":Ljava/lang/String;
    .restart local v18    # "slotId":I
    .restart local v19    # "slpName":Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 169
    .local v3, "addrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 170
    const-string/jumbo v20, "ADDR"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "address":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 171
    .restart local v4    # "address":Ljava/lang/String;
    const-string/jumbo v20, "ADDRTYPE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "addressType":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "addressType":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v3    # "addrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string/jumbo v20, "TO-NAPID"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 182
    .local v11, "defaultApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 187
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/LbsReceiver;->initSIMStatus(I)V

    .line 190
    const-string/jumbo v16, ""

    .line 191
    .local v16, "profileCode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 192
    if-eqz v16, :cond_7

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 193
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "invalide profile code:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    .line 194
    return-void

    .line 183
    .end local v16    # "profileCode":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "defaultApn":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10    # "defaultApn":Ljava/lang/String;
    goto :goto_1

    .line 196
    .restart local v16    # "profileCode":Ljava/lang/String;
    :cond_9
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v20, "com.mediatek.agps.OMACP_UPDATED"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v13, "mIntent":Landroid/content/Intent;
    const-string/jumbo v20, "code"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string/jumbo v20, "addr"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :try_start_0
    new-instance v6, Lcom/mediatek/lbs/em2/utils/AgpsInterface;

    invoke-direct {v6}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;-><init>()V

    .line 201
    .local v6, "agpsInterface":Lcom/mediatek/lbs/em2/utils/AgpsInterface;
    invoke-virtual {v6}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->getAgpsConfig()Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .line 202
    .local v15, "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    iput-object v4, v15, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 204
    if-eqz v17, :cond_a

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 208
    :cond_a
    :goto_2
    if-eqz v19, :cond_b

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 212
    :cond_b
    :goto_3
    if-eqz v10, :cond_c

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 216
    :cond_c
    :goto_4
    if-eqz v5, :cond_d

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 223
    :cond_d
    :goto_5
    const-string/jumbo v20, "port"

    const/16 v21, 0x1c6b

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const/16 v20, 0x1c6b

    move/from16 v0, v20

    iput v0, v15, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 226
    const-string/jumbo v20, "tls"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {v6, v15}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->setSuplProfile(Lcom/mediatek/lbs/em2/utils/SuplProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v6    # "agpsInterface":Lcom/mediatek/lbs/em2/utils/AgpsInterface;
    .end local v15    # "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    :goto_6
    const-string/jumbo v20, "OMA CP update successfully finished"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    .line 145
    return-void

    .line 205
    .restart local v6    # "agpsInterface":Lcom/mediatek/lbs/em2/utils/AgpsInterface;
    .restart local v15    # "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    :cond_e
    :try_start_1
    const-string/jumbo v20, "providerId"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 231
    .end local v6    # "agpsInterface":Lcom/mediatek/lbs/em2/utils/AgpsInterface;
    .end local v15    # "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    :catch_0
    move-exception v12

    .line 232
    .local v12, "e":Ljava/io/IOException;
    const-string/jumbo v20, "LbsReceiver"

    const-string/jumbo v21, "IOException happened when new AgpsInterface object"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 209
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v6    # "agpsInterface":Lcom/mediatek/lbs/em2/utils/AgpsInterface;
    .restart local v15    # "profile":Lcom/mediatek/lbs/em2/utils/SuplProfile;
    :cond_f
    :try_start_2
    const-string/jumbo v20, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    goto/16 :goto_3

    .line 213
    :cond_10
    const-string/jumbo v20, "defaultApn"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iput-object v10, v15, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    goto/16 :goto_4

    .line 217
    :cond_11
    const-string/jumbo v20, "addrType"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iput-object v5, v15, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5
.end method

.method private initSIMStatus(I)V
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x5

    .line 259
    const/4 v0, -0x1

    .line 260
    .local v0, "simStatus":I
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    .line 261
    iget-object v3, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    .line 262
    const-string/jumbo v4, "phone"

    .line 261
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 263
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .line 264
    const/4 v4, 0x2

    .line 263
    if-ne v3, v4, :cond_1

    .line 265
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 266
    if-ne v5, v0, :cond_0

    .line 267
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 268
    .local v1, "subId":I
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    .line 276
    .end local v1    # "subId":I
    :cond_0
    :goto_0
    const-string/jumbo v3, "LbsReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SlotId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    const-string/jumbo v5, " OperatorCode : "

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    iget-object v5, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    .line 276
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 271
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 272
    if-ne v5, v0, :cond_0

    .line 273
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "LbsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_AGPS_APP:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 114
    const-string/jumbo v1, "com.mediatek.agps.OMACP_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleAgpsOmaProfileUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string/jumbo v1, "com.mediatek.omacp.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleOmaCpSetting(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string/jumbo v1, "com.mediatek.omacp.capability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleOmaCpCapability(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
