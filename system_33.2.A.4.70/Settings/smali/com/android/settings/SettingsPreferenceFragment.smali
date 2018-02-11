.class public abstract Lcom/android/settings/SettingsPreferenceFragment;
.super Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;,
        Lcom/android/settings/SettingsPreferenceFragment$1;,
        Lcom/android/settings/SettingsPreferenceFragment$2;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x258

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "android:preference_highlighted"

.field private static final TAG:Ljava/lang/String; = "SettingsPreferenceFragment"

.field private static final WAIT_DATA_OBSERVER:I = 0x64


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpUri:Ljava/lang/String;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;

.field private mRunHighlight:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/SettingsPreferenceFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 79
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment$1;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsPreferenceFragment$2;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRunHighlight:Ljava/lang/Runnable;

    .line 56
    return-void
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasListView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    return v3

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 242
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 244
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_1

    .line 245
    invoke-direct {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 248
    :cond_1
    return v3
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 293
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 294
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 295
    .local v1, "item":Ljava/lang/Object;
    instance-of v5, v1, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 296
    check-cast v3, Landroid/preference/Preference;

    .line 297
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "preferenceKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 299
    return v2

    .line 293
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v4    # "preferenceKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 254
    .local v5, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v4

    .line 255
    .local v4, "position":I
    if-ltz v4, :cond_0

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 259
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .local v3, "adapter":Landroid/widget/ListAdapter;
    move-object v0, v3

    .line 261
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v3

    .line 262
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 264
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment$3;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/widget/ListView;Landroid/widget/ListAdapter;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 251
    .end local v2    # "listView":Landroid/widget/ListView;
    .end local v3    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 538
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 536
    :cond_0
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 332
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 343
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method public getFloatingActionButton()Lcom/android/settings/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 318
    const v0, 0x7f0b0d2b

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRunHighlight:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mRunHighlight:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 177
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    if-eqz p1, :cond_0

    .line 107
    const-string/jumbo v1, "android:preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 112
    .local v0, "helpResource":I
    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    .line 103
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    .line 322
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f130096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 122
    const v1, 0x7f13014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    .line 123
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 368
    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 371
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onDetach()V

    .line 364
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 164
    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 168
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 169
    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 172
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 159
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    const-string/jumbo v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onStop()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 187
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 182
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 204
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 198
    :cond_1
    return-void
.end method

.method protected removeDialog(I)V
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->dismissAllowingStateLoss()V

    .line 397
    :cond_0
    iput-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 388
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 308
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    :cond_0
    return-void
.end method

.method protected setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->-set0(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;

    .line 405
    :cond_0
    return-void
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->-set1(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 416
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 4
    .param p1, "layoutResId"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 133
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, "pinnedHeader":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    .line 135
    return-object v1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 138
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 378
    const-string/jumbo v0, "SettingsPreferenceFragment"

    const-string/jumbo v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 381
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public showLoadingWhenEmpty()V
    .locals 3

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1300f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "loading":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "titleRes"    # I
    .param p4, "requestCode"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 546
    .local v8, "activity":Landroid/app/Activity;
    instance-of v2, v8, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 547
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 548
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 549
    const/4 v2, 0x1

    return v2

    .line 550
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_0
    instance-of v2, v8, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v8

    .line 551
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 552
    .local v1, "sa":Landroid/preference/PreferenceActivity;
    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p5

    move v4, p3

    move-object v6, p1

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 553
    const/4 v2, 0x1

    return v2

    .line 555
    .end local v1    # "sa":Landroid/preference/PreferenceActivity;
    :cond_1
    const-string/jumbo v2, "SettingsPreferenceFragment"

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 558
    const-string/jumbo v4, ", requestCode: "

    .line 556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 558
    const-string/jumbo v4, ")"

    .line 556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v2, 0x0

    return v2
.end method

.method public unregisterObserverIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 213
    iput-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 209
    :cond_1
    return-void
.end method
