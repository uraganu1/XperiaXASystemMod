.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;
.super Landroid/app/ListFragment;
.source "ConferenceParticipantsFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;,
        Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_CONFERENCE_CALL_PARTICIPANTS:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.action.PICK_CONFERENCE_CALL_PARTICIPANTS"

.field private static final ADD_PARTICIPANTS_RESULT_CODE:I = 0x1

.field public static final EXTRA_CONFERENCE_PARTICIPANTS:Ljava/lang/String; = "conferenceParticipants"

.field private static final EXTRA_LIST_STATE:Ljava/lang/String; = "listState"

.field public static final MAX_PARTICIPANTS_ALLOWED_TO_ADD:I = 0x1d

.field private static final PARTICIPANTS_LOADER_ID:I = 0x3e9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

.field private mBrandName:Ljava/lang/String;

.field private mCallParticipantsFab:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoaderListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnFabClickListener:Landroid/view/View$OnClickListener;

.field private mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

.field private mSavedListState:Landroid/os/Parcelable;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;Ljava/util/List;)[Ljava/lang/String;
    .locals 1
    .param p1, "numbersDataList"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->getNumbersArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mOnFabClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method private getNumbersArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "numbersDataList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 262
    .local v1, "numbers":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    iget-object v2, v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;->number:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    return-object v1
.end method

.method private getNumbersDataList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "numbers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 273
    .local v1, "numbersData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;>;"
    if-eqz p1, :cond_0

    .line 274
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 275
    .local v0, "number":Ljava/lang/String;
    new-instance v4, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mBrandName:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mLoaderManager:Landroid/app/LoaderManager;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mLoaderListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 158
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 237
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 239
    const-string/jumbo v2, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    .line 238
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 241
    .local v1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    if-nez v1, :cond_0

    .line 242
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Returned from contact picker without expected extra!"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void

    .line 246
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 247
    .local v0, "number":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    new-instance v6, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;

    iget-object v7, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mBrandName:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Lcom/sonyericsson/android/socialphonebook/conferencecall/model/CollapsibleNumberData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/Collapser;->collapseList(Ljava/util/List;)V

    .line 252
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mLoaderManager:Landroid/app/LoaderManager;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mLoaderListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;

    const/16 v5, 0x3e9

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 235
    .end local v1    # "participants":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcelable;>;"
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mBrandName:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 123
    const-string/jumbo v1, "listState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 124
    const-string/jumbo v1, "conferenceParticipants"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    .line 133
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mLoaderListener:Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment$ParticipantsLoaderListener;

    .line 134
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter$ParticipantRemovedListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->setHasOptionsMenu(Z)V

    .line 112
    return-void

    .line 126
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "conferenceParticipants"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string/jumbo v1, "conferenceParticipants"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->getNumbersDataList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 196
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 195
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 141
    const v0, 0x7f04002f

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 178
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 176
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 231
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 213
    :sswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 214
    return v3

    .line 217
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    .line 218
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.PICK_CONFERENCE_CALL_PARTICIPANTS"

    .line 217
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

    .line 222
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->getCount()I

    move-result v2

    .line 221
    rsub-int/lit8 v2, v2, 0x1d

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string/jumbo v1, "extraNumbersForFiltering"

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->getNumbersArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v0, v3}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 225
    return v3

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e023d -> :sswitch_1
    .end sparse-switch
.end method

.method public onParticipantRemoved(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 189
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->pause()V

    .line 170
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 203
    const v1, 0x7f0e023d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 204
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mAdapter:Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/adapters/ParticipantsAdapter;->getCount()I

    move-result v1

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 200
    :cond_0
    return-void

    .line 205
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mPhotoManager:Lcom/android/contacts/photomanager/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/photomanager/ContactPhotoManager;->resume()V

    .line 164
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string/jumbo v0, "conferenceParticipants"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mNumbers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    const-string/jumbo v0, "listState"

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mListView:Landroid/widget/ListView;

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 150
    const v0, 0x7f0e009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mCallParticipantsFab:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mCallParticipantsFab:Landroid/view/View;

    const v1, 0x7f0e0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mCallParticipantsFab:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mOnFabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->mCallParticipantsFab:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceParticipantsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    const v2, 0x7f0901ac

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method
