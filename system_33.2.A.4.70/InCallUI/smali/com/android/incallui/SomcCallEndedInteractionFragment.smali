.class public Lcom/android/incallui/SomcCallEndedInteractionFragment;
.super Lcom/android/incallui/BaseFragment;
.source "SomcCallEndedInteractionFragment.java"

# interfaces
.implements Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/SomcCallEndedInteractionPresenter;",
        "Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;",
        ">;",
        "Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mCallEndedInteractionPanel:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method

.method private callPrivileged(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 179
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 181
    :try_start_0
    const-string/jumbo v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 182
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    const-string/jumbo v4, "SomcInCallUiUtils"

    const-string/jumbo v5, "Sending the Call intent"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SomcInCallUiUtils"

    const-string/jumbo v5, "Activity for calls isn\'t found."

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private initCallEndedInteractionListener()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f00d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f00d2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f00d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f0f00d4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method private sendSmsMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 202
    :try_start_0
    const-string/jumbo v4, "sms"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 203
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SENDTO"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v4, "SomcInCallUiUtils"

    const-string/jumbo v5, "Sending the sms intent"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SomcInCallUiUtils"

    const-string/jumbo v5, "Activity for sms isn\'t found."

    invoke-static {v4, v5, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private showContact(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isCallerExist"    # Z

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 222
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 226
    if-eqz p2, :cond_1

    .line 228
    :try_start_0
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 229
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v6, "SomcInCallUiUtils"

    const-string/jumbo v7, "Sending the view contacts intent"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 233
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 238
    .local v4, "sipValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "mimetype"

    const-string/jumbo v7, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v6, "data1"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v6, "data"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    .end local v1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "sipValues":Landroid/content/ContentValues;
    :goto_2
    const-string/jumbo v6, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 253
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SomcInCallUiUtils"

    const-string/jumbo v7, "Activity for contacts isn\'t found."

    invoke-static {v6, v7, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "phone"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->createPresenter()Lcom/android/incallui/SomcCallEndedInteractionPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/android/incallui/SomcCallEndedInteractionPresenter;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/android/incallui/SomcCallEndedInteractionPresenter;

    invoke-direct {v0}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;-><init>()V

    return-object v0
.end method

.method public enableSmsButton(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v2, 0x7f0f00d2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "sendSmsButton":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 157
    return-void
.end method

.method public getUi()Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->getUi()Lcom/android/incallui/SomcCallEndedInteractionPresenter$CallEndedInteractionUi;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcCallEndedInteractionPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcCallEndedInteractionPresenter;->init(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 78
    .local v1, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 89
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    packed-switch v1, :pswitch_data_0

    .line 104
    const-string/jumbo v2, "onClick: unexpected"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 85
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    const-string/jumbo v2, "Intent parameter not exsist."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    return-void

    .line 91
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :pswitch_0
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->callPrivileged(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->sendSmsMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->showContact(Ljava/lang/String;Z)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->lookupUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->showContact(Ljava/lang/String;Z)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f0f00d2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v1, 0x7f040043

    .line 60
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f0f00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    .line 63
    invoke-direct {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->initCallEndedInteractionListener()V

    .line 65
    return-object v0
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 145
    .local v0, "v":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCallEndedInteractionFragment(ZLjava/lang/Object;)V
    .locals 9
    .param p1, "showAddContacts"    # Z
    .param p2, "userData"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallEndedInteractionFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    return-void

    .line 117
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v5, 0x7f0f00d5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "callBackButton":Landroid/view/View;
    iget-object v4, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v5, 0x7f0f00d2

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "sendSmsButton":Landroid/view/View;
    iget-object v4, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    .line 120
    const v5, 0x7f0f00d3

    .line 119
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "addContactsButton":Landroid/view/View;
    iget-object v4, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    .line 122
    const v5, 0x7f0f00d4

    .line 121
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 124
    .local v3, "viewContactButton":Landroid/view/View;
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 128
    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v3, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/SomcCallEndedInteractionFragment;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 110
    return-void

    .line 134
    :cond_1
    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 136
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
