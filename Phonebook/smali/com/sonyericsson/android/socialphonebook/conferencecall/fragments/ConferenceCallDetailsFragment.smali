.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;
.super Landroid/app/ListFragment;
.source "ConferenceCallDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;,
        Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;
    }
.end annotation


# static fields
.field private static final CALL_GROUP_POS:I = 0x0

.field private static final CONFERENCE_CONTACTS_LOADER_ID:I = 0x3e9

.field private static final DELETE_FROM_CALL_LOG_POS:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCallGroupView:Landroid/view/View;

.field private mCallIds:[I

.field private mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mCallStateListener:Landroid/telephony/PhoneStateListener;

.field private mConferenceCallAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

.field private mConferenceCallHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

.field private mConferenceLoaderListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;

.field private mDeleteGroupCallView:Landroid/view/View;

.field private mDurationHeaderView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumbers:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)[I
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallIds:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->initActionViews()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->removeListHeaders()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private createActionItem(II)Landroid/view/View;
    .locals 7
    .param p1, "stringResId"    # I
    .param p2, "drawableResId"    # I

    .prologue
    .line 197
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 197
    const v5, 0x7f040027

    .line 198
    const/4 v6, 0x0

    .line 197
    invoke-virtual {v3, v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 200
    .local v2, "headerView":Landroid/view/View;
    const v3, 0x7f0e008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    .local v1, "actionText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const v3, 0x7f0e008b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    .local v0, "actionIcon":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    return-object v2
.end method

.method private createDurationListItem()Landroid/view/View;
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 167
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 166
    const v2, 0x7f04002d

    .line 167
    const/4 v3, 0x0

    .line 166
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDurationHeaderView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDurationHeaderView:Landroid/view/View;

    return-object v0
.end method

.method private initActionViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 149
    .local v0, "listView":Landroid/widget/ListView;
    const v1, 0x7f0903af

    .line 150
    const v2, 0x7f02003d

    .line 149
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->createActionItem(II)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallGroupView:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;->isConferenceCallPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallGroupView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallGroupView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 159
    :goto_0
    const v1, 0x7f09009a

    .line 160
    const v2, 0x7f02004a

    .line 159
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->createActionItem(II)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDeleteGroupCallView:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDeleteGroupCallView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->createDurationListItem()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 146
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallGroupView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallGroupView:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private initFragment()V
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->initActionViews()V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    return-void
.end method

.method private onActionItemsClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 230
    packed-switch p1, :pswitch_data_0

    .line 239
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown action item position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 232
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mNumbers:[Ljava/lang/String;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->getConferenceCallIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallIds:[I

    const-string/jumbo v2, "tel:"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->deleteByIds([ILjava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeListHeaders()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 174
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallGroupView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallGroupView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDeleteGroupCallView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDeleteGroupCallView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDurationHeaderView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDurationHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 172
    :cond_2
    return-void
.end method


# virtual methods
.method public getCallStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method public getConferenceCallDetailsAdapter()Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    return-object v0
.end method

.method public initDurationView()V
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDurationHeaderView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDurationHeaderView:Landroid/view/View;

    .line 188
    const v3, 0x7f0e009a

    .line 187
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .local v0, "textHeader":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mDurationHeaderView:Landroid/view/View;

    .line 190
    const v3, 0x7f0e009b

    .line 189
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 191
    .local v1, "textTime":Landroid/widget/TextView;
    const v2, 0x7f0900a7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->getCallDateAndDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v0    # "textHeader":Landroid/widget/TextView;
    .end local v1    # "textTime":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 111
    .local v1, "intentExtras":Landroid/os/Bundle;
    const-string/jumbo v2, "call_items"

    .line 110
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;

    .line 112
    .local v0, "callItemsHelper":Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mNumbers:[Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CallLogHelper;->getIds()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallIds:[I

    .line 114
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceLoaderListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;

    .line 115
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    .line 116
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 217
    .local v1, "headerViewsCount":I
    if-ge p3, v1, :cond_0

    .line 218
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->onActionItemsClick(I)V

    .line 226
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 215
    return-void

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;

    .line 221
    sub-int v5, p3, v1

    .line 220
    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ConferenceCallDetailsAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;

    move-result-object v3

    iget-object v0, v3, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/ConferenceCallData$ParticipantData;->contactUri:Landroid/net/Uri;

    .line 222
    .local v0, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v4

    check-cast v3, Landroid/graphics/Rect;

    .line 223
    const/4 v6, 0x4

    .line 222
    invoke-static {v5, v3, v0, v6, v4}, Landroid/provider/ContactsContract$QuickContact;->composeQuickContactsIntent(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 224
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 134
    const-string/jumbo v2, "phone"

    .line 133
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 135
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 123
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceLoaderListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$ConferenceCallDetailsLoaderListener;

    .line 122
    const/16 v4, 0x3e9

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 124
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment$CallStateListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "phone"

    .line 125
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 127
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mCallStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 120
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->initFragment()V

    .line 100
    return-void
.end method

.method public setConferenceCallHelper(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;)V
    .locals 0
    .param p1, "conferenceCallHelper"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallDetailsFragment;->mConferenceCallHelper:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper;

    .line 270
    return-void
.end method
