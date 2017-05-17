.class public Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    .line 58
    return-void
.end method

.method public static isDialIntent(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)Z
    .locals 2
    .param p0, "mRequest"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0x96

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewCallLogIntent(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)Z
    .locals 2
    .param p0, "mRequest"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v1, 0xa0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    new-instance v8, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-direct {v8}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;-><init>()V

    .line 65
    .local v8, "request":Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "component":Ljava/lang/String;
    sget-object v12, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Called with action: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string/jumbo v12, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 71
    const/16 v12, 0xa

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 198
    :cond_0
    :goto_0
    const-string/jumbo v12, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 199
    .local v10, "title":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 200
    invoke-virtual {v8, v10}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 204
    :cond_1
    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v12

    const/16 v13, 0x96

    if-eq v13, v12, :cond_2c

    .line 205
    const-string/jumbo v12, "DialerEntryActivity"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-le v12, v13, :cond_2b

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setDialerIntent(Z)V

    .line 209
    :goto_2
    return-object v8

    .line 72
    .end local v10    # "title":Ljava/lang/String;
    :cond_2
    const-string/jumbo v12, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 73
    const/16 v12, 0xf

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 74
    :cond_3
    const-string/jumbo v12, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 75
    const/16 v12, 0x11

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 76
    :cond_4
    const-string/jumbo v12, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 77
    const/16 v12, 0x1e

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 78
    :cond_5
    const-string/jumbo v12, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 79
    const/16 v12, 0x28

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 80
    :cond_6
    const-string/jumbo v12, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 81
    const/16 v12, 0x32

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 82
    :cond_7
    const-string/jumbo v12, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 83
    const/16 v12, 0x14

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 85
    :cond_8
    const-string/jumbo v12, "android.intent.action.PICK"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 86
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 87
    .local v9, "resolvedType":Ljava/lang/String;
    const-string/jumbo v12, "vnd.android.cursor.dir/contact"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 88
    const/16 v12, 0x3c

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 89
    :cond_9
    const-string/jumbo v12, "vnd.android.cursor.dir/person"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 90
    const/16 v12, 0x3c

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 91
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 92
    :cond_a
    const-string/jumbo v12, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 93
    const/16 v12, 0x5a

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 94
    :cond_b
    const-string/jumbo v12, "vnd.android.cursor.dir/phone"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 95
    const/16 v12, 0x5a

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 96
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 97
    :cond_c
    const-string/jumbo v12, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 98
    const/16 v12, 0x64

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 99
    :cond_d
    const-string/jumbo v12, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 100
    const/16 v12, 0x64

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 101
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 102
    :cond_e
    const-string/jumbo v12, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 103
    const/16 v12, 0x69

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 105
    .end local v9    # "resolvedType":Ljava/lang/String;
    :cond_f
    const-string/jumbo v12, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 106
    const-string/jumbo v12, "alias.DialShortcut"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 107
    const/16 v12, 0x78

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 108
    :cond_10
    const-string/jumbo v12, "alias.MessageShortcut"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 109
    const/16 v12, 0x82

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 111
    :cond_11
    const/16 v12, 0x6e

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 113
    :cond_12
    const-string/jumbo v12, "android.intent.action.GET_CONTENT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "type":Ljava/lang/String;
    const-string/jumbo v12, "vnd.android.cursor.item/contact"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 116
    const/16 v12, 0x46

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 117
    :cond_13
    const-string/jumbo v12, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 118
    const/16 v12, 0x5a

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 119
    :cond_14
    const-string/jumbo v12, "vnd.android.cursor.item/phone"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 120
    const/16 v12, 0x5a

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 121
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 122
    :cond_15
    const-string/jumbo v12, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 123
    const/16 v12, 0x64

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 124
    :cond_16
    const-string/jumbo v12, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 125
    const/16 v12, 0x64

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 126
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 127
    :cond_17
    const-string/jumbo v12, "vnd.android.cursor.item/person"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 128
    const/16 v12, 0x46

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 129
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 131
    .end local v11    # "type":Ljava/lang/String;
    :cond_18
    const-string/jumbo v12, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 132
    const/16 v12, 0x50

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 133
    :cond_19
    const-string/jumbo v12, "android.intent.action.SEARCH"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 135
    const-string/jumbo v12, "call"

    const-string/jumbo v13, "action_msg"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 136
    const-string/jumbo v12, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "query":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    const/4 v13, 0x1

    invoke-static {v12, v7, v13}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 139
    .local v5, "newIntent":Landroid/content/Intent;
    invoke-virtual {v8, v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 142
    .end local v5    # "newIntent":Landroid/content/Intent;
    .end local v7    # "query":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v12, "query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 143
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 145
    :cond_1b
    const-string/jumbo v12, "android.intent.action.VIEW"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 148
    .local v3, "data":Landroid/net/Uri;
    const-string/jumbo v12, "vnd.android.cursor.dir/contact"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    .line 149
    const-string/jumbo v12, "vnd.android.cursor.dir/person"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 148
    if-eqz v12, :cond_1d

    .line 150
    :cond_1c
    const/16 v12, 0xf

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 151
    :cond_1d
    const-string/jumbo v12, "vnd.android.cursor.dir/calls"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 152
    const/16 v12, 0xa0

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 153
    :cond_1e
    if-eqz v3, :cond_1f

    const-string/jumbo v12, "tel"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 154
    const/16 v12, 0x96

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 155
    :cond_1f
    const-string/jumbo v12, "vnd.android.cursor.item/calls"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    .line 156
    const-string/jumbo v12, "vnd.android.cursor.item/voicemail"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 155
    if-eqz v12, :cond_21

    .line 157
    :cond_20
    const/16 v12, 0xaa

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setCallUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 160
    :cond_21
    const/16 v12, 0x8c

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 162
    const-string/jumbo v12, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 165
    .end local v3    # "data":Landroid/net/Uri;
    .end local v9    # "resolvedType":Ljava/lang/String;
    :cond_22
    const-string/jumbo v12, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 169
    const/16 v12, 0xa

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 171
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_23

    .line 172
    const-string/jumbo v12, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 175
    :cond_23
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 176
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_24
    const-string/jumbo v12, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 178
    const/4 v14, 0x1

    .line 177
    invoke-static {v12, v13, v14}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getCallIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 179
    :cond_25
    const-string/jumbo v12, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "number":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.INSERT"

    sget-object v13, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v5, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .restart local v5    # "newIntent":Landroid/content/Intent;
    const-string/jumbo v12, "phone"

    invoke-virtual {v5, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v8, v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setRedirectIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 185
    .end local v5    # "newIntent":Landroid/content/Intent;
    .end local v6    # "number":Ljava/lang/String;
    :cond_26
    const-string/jumbo v12, "android.intent.action.DIAL"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_27

    .line 186
    const/16 v12, 0x96

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 187
    :cond_27
    const-string/jumbo v12, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    .line 188
    const/16 v12, 0x96

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 189
    :cond_28
    const-string/jumbo v12, "android.intent.action.MAIN"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    .line 190
    const-string/jumbo v12, "DialerEntryActivity"

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-gt v12, v13, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 191
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/socialphonebook/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    const-class v15, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 189
    if-eqz v12, :cond_2a

    .line 192
    :cond_29
    const/16 v12, 0xa0

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 194
    :cond_2a
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 205
    .restart local v10    # "title":Ljava/lang/String;
    :cond_2b
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 207
    :cond_2c
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setDialerIntent(Z)V

    goto/16 :goto_2
.end method
