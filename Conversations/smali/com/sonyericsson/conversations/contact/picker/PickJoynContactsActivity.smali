.class public Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;
.super Landroid/app/Activity;
.source "PickJoynContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;
    }
.end annotation


# static fields
.field public static final INTENT_EXTRA_CURRENT_JOYN_PARTICIPANTS:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

.field private mCreateGroupChatMenuItem:Landroid/view/MenuItem;

.field private mEmptyListTextView:Landroid/widget/TextView;

.field private mHeaderSeperatorView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mLoadContactsTask:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;

.field private mNbrOfNewlyAddedContacts:I

.field private mNbrOfPickedContacts:I

.field private mSubjectEditText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mCreateGroupChatMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mEmptyListTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mNbrOfNewlyAddedContacts:I

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mNbrOfPickedContacts:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->isCreateChatButtonEnabled()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "current_participants"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->INTENT_EXTRA_CURRENT_JOYN_PARTICIPANTS:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mNbrOfPickedContacts:I

    .line 44
    return-void
.end method

.method private getPreselectedNumbers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->INTENT_EXTRA_CURRENT_JOYN_PARTICIPANTS:Ljava/lang/String;

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->INTENT_EXTRA_CURRENT_JOYN_PARTICIPANTS:Ljava/lang/String;

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private isCreateChatButtonEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v0

    .line 156
    .local v0, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    iget v2, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mNbrOfPickedContacts:I

    invoke-interface {v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->getMinGroupConversationParticipants()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 157
    iget v2, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mNbrOfPickedContacts:I

    invoke-interface {v0}, Lcom/sonymobile/jms/setting/ImSettingApi;->getMaxGroupConversationParticipants()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 158
    iget v2, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mNbrOfNewlyAddedContacts:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 156
    :cond_0
    return v1
.end method

.method private setResultAndFinish()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "chatID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "chatID"

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "chatID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 195
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 197
    const-string/jumbo v2, "address"

    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getPickedNumbers()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v5, v0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->finish()V

    .line 192
    return-void

    .line 200
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mSubjectEditText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "subject":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "address"

    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->getPickedNumbers()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v5, v0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private setupMaxSelectionLimitation(I)V
    .locals 6
    .param p1, "nbrOfPreselected"    # I

    .prologue
    .line 162
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v2

    .line 163
    .local v2, "imSettingApi":Lcom/sonymobile/jms/setting/ImSettingApi;
    if-eqz v2, :cond_1

    .line 164
    iget-object v4, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-interface {v2}, Lcom/sonymobile/jms/setting/ImSettingApi;->getMaxGroupConversationParticipants()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->setMaxRecipients(I)V

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "chatID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    iget-object v4, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mSubjectEditText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 171
    const-string/jumbo v5, "chatID"

    .line 170
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/jms/conversation/ImGroupConversationId;

    .line 173
    .local v1, "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/conversations/Apis;->getImConversationApi()Lcom/sonymobile/jms/conversation/ImConversationApi;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/sonymobile/jms/conversation/ImConversationApi;->getMaxChatRecipientsToBeAdded(Lcom/sonymobile/jms/conversation/ImGroupConversationId;)I

    move-result v3

    .line 175
    .local v3, "maxLimit":I
    iget-object v4, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    add-int v5, v3, p1

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->setMaxRecipients(I)V
    :try_end_0
    .catch Lcom/sonymobile/jms/conversation/RcsSessionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .end local v3    # "maxLimit":I
    :cond_0
    :goto_1
    return-void

    .line 166
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;->setMaxRecipients(I)V

    goto :goto_0

    .line 176
    .restart local v1    # "imGroupConversationId":Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lcom/sonymobile/jms/conversation/RcsSessionException;
    const-string/jumbo v4, "Unable to get max recipients for group chat session \'"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->log(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/Object;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    .line 178
    const-string/jumbo v5, "\'"

    .line 177
    invoke-virtual {v4, v5}, Lcom/sonymobile/conversations/util/LogUtil;->add(Ljava/lang/String;)Lcom/sonymobile/conversations/util/LogUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/conversations/util/LogUtil;->flushAsError()V

    goto :goto_1
.end method

.method private setupSubject()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v5, "showSubject"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 145
    .local v2, "showSubject":Z
    iget-object v5, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mSubjectEditText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    new-array v0, v6, [Landroid/text/InputFilter;

    .line 148
    .local v0, "filterArray":[Landroid/text/InputFilter;
    invoke-static {}, Lcom/sonyericsson/conversations/ApiHolder;->getApis()Lcom/sonyericsson/conversations/Apis;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/conversations/Apis;->getImSettingApi()Lcom/sonymobile/jms/setting/ImSettingApi;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/jms/setting/ImSettingApi;->getMaxGroupConversationSubjectLength()I

    move-result v1

    .line 149
    .local v1, "maxLength":I
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v4

    .line 150
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mSubjectEditText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 142
    return-void

    .line 145
    .end local v0    # "filterArray":[Landroid/text/InputFilter;
    .end local v1    # "maxLength":I
    :cond_0
    const/16 v3, 0x8

    goto :goto_0
.end method

.method private startLoadContactsTask(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "preselectedNumbers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    new-instance v0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;-><init>(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mLoadContactsTask:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mLoadContactsTask:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v3, 0x7f030022

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "group-chatID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0b01ef

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 79
    :goto_0
    const v3, 0x7f0d0058

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mSubjectEditText:Landroid/widget/TextView;

    .line 81
    new-instance v3, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    new-instance v4, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$1;-><init>(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)V

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter$JoynContactAdapterListener;)V

    iput-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    .line 94
    const v3, 0x7f0d005c

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mEmptyListTextView:Landroid/widget/TextView;

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mEmptyListTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    const v3, 0x7f0d0059

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 97
    const v3, 0x7f0d005a

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mHeaderSeperatorView:Landroid/view/View;

    .line 99
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mHeaderSeperatorView:Landroid/view/View;

    invoke-static {p0}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const v3, 0x7f0d005b

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 103
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getPreselectedNumbers()Ljava/util/Set;

    move-result-object v2

    .line 105
    .local v2, "preselectedNumbers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 106
    .local v1, "nbrOfPreselected":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->setupSubject()V

    .line 107
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->setupMaxSelectionLimitation(I)V

    .line 108
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->startLoadContactsTask(Ljava/util/Set;)V

    .line 67
    return-void

    .line 75
    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "nbrOfPreselected":I
    .end local v2    # "preselectedNumbers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 76
    const v4, 0x7f0b0268

    .line 75
    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    const v0, 0x7f0d013d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mCreateGroupChatMenuItem:Landroid/view/MenuItem;

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mCreateGroupChatMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->isCreateChatButtonEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mCreateGroupChatMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$2;-><init>(Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mLoadContactsTask:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mLoadContactsTask:Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity$LoadJoynContactsTask;->cancel(Z)Z

    .line 188
    :cond_0
    iput-object v2, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mAdapter:Lcom/sonyericsson/conversations/contact/picker/JoynContactAdapter;

    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 184
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 128
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 130
    :sswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mSubjectEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->setResultAndFinish()V

    .line 132
    return v3

    .line 134
    :sswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->mSubjectEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->finish()V

    .line 136
    return v3

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0d013d -> :sswitch_0
    .end sparse-switch
.end method
