.class public Lcom/android/contacts/editor/LinkedContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "LinkedContactEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;,
        Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;
    }
.end annotation


# instance fields
.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mContactEditorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/BaseRawContactEditorView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDisplayName:Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

.field private mCurrentEditorView:Lcom/android/contacts/editor/BaseRawContactEditorView;

.field private mDisplayNameSelectorListener:Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;

.field private mDisplayNameSpinner:Landroid/widget/Spinner;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRawContactId:J

.field private mTabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabHost:Landroid/widget/TabHost;

.field private mUnlinkContactButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/android/contacts/editor/LinkedContactEditorView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/editor/LinkedContactEditorView;)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentDisplayName:Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/contacts/editor/LinkedContactEditorView;)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentEditorView:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/editor/LinkedContactEditorView;)Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mDisplayNameSelectorListener:Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/contacts/editor/LinkedContactEditorView;)Landroid/widget/TabHost$OnTabChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/contacts/editor/LinkedContactEditorView;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/contacts/editor/LinkedContactEditorView;Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;)Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentDisplayName:Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/contacts/editor/LinkedContactEditorView;Lcom/android/contacts/editor/BaseRawContactEditorView;)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentEditorView:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mRawContactId:J

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentEditorView:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mRawContactId:J

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentEditorView:Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 163
    return-void
.end method


# virtual methods
.method public addContactEditorView(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 8
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    const/4 v7, 0x0

    .line 279
    iget-object v4, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabHost:Landroid/widget/TabHost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Tab"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mContactEditorList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 280
    .local v1, "spec":Landroid/widget/TabHost$TabSpec;
    iget-object v4, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mContactEditorList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v4, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040070

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 282
    .local v2, "tabIndicator":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getAccountIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .local v0, "accountIconDrawable":Landroid/graphics/drawable/Drawable;
    const v4, 0x7f0e013b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 284
    .local v3, "tabIndicatorImageView":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 288
    new-instance v4, Lcom/android/contacts/editor/LinkedContactEditorView$2;

    invoke-direct {v4, p0, p1}, Lcom/android/contacts/editor/LinkedContactEditorView$2;-><init>(Lcom/android/contacts/editor/LinkedContactEditorView;Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 294
    iget-object v4, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 278
    return-void
.end method

.method public bindDisplayNameSelector(Ljava/util/List;J)V
    .locals 4
    .param p2, "displayNameRawContactId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/RawContactDelta;>;"
    const/4 v2, 0x0

    .line 351
    new-instance v0, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/LinkedContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 356
    .local v0, "displayNameAdapter":Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mDisplayNameSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 358
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mDisplayNameSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 361
    invoke-virtual {v0}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->getSelectedDisplayName()Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentDisplayName:Lcom/android/contacts/editor/LinkedContactEditorView$RawContactDisplayName;

    .line 362
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mDisplayNameSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/contacts/editor/LinkedContactEditorView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/editor/LinkedContactEditorView$3;-><init>(Lcom/android/contacts/editor/LinkedContactEditorView;Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 385
    iget-object v1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mDisplayNameSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LinkedContactDisplayNameAdapter;->getSelectedDisplayNameIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 348
    return-void
.end method

.method public dismissPopupWindows()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentEditorView:Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentEditorView:Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->dismissPopupWindows()V

    .line 397
    :cond_0
    return-void
.end method

.method public findEditorByRawContactId(J)Lcom/android/contacts/editor/RawContactCommonEditorView;
    .locals 5
    .param p1, "rawContactId"    # J

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mContactEditorList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "view$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 197
    .local v0, "view":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 198
    check-cast v0, Lcom/android/contacts/editor/RawContactCommonEditorView;

    .end local v0    # "view":Lcom/android/contacts/editor/BaseRawContactEditorView;
    return-object v0

    .line 201
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAccountIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentRawContactId()J
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentView()Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mCurrentEditorView:Lcom/android/contacts/editor/BaseRawContactEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 208
    invoke-virtual {p0}, Lcom/android/contacts/editor/LinkedContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 210
    const v0, 0x7f0e01c2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LinkedContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabHost:Landroid/widget/TabHost;

    .line 211
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 212
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/android/contacts/editor/LinkedContactEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/LinkedContactEditorView$1;-><init>(Lcom/android/contacts/editor/LinkedContactEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mContactEditorList:Ljava/util/ArrayList;

    .line 239
    const v0, 0x7f0e01c4

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LinkedContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mUnlinkContactButton:Landroid/widget/Button;

    .line 241
    const v0, 0x7f0e013f

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LinkedContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f0e01c5

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/LinkedContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mDisplayNameSpinner:Landroid/widget/Spinner;

    .line 205
    return-void
.end method

.method public setCurrentTab(Ljava/lang/String;)V
    .locals 1
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public setDisplayNameSelectorListener(Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mDisplayNameSelectorListener:Lcom/android/contacts/editor/LinkedContactEditorView$DisplayNameSelectionListener;

    .line 334
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 171
    iget-object v3, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mContactEditorList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "editor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 172
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    goto :goto_0

    .line 175
    .end local v0    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/LinkedContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 176
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mUnlinkContactButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    iget-object v3, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mDisplayNameSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 168
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mContactEditorList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "editor$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 259
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 257
    .end local v0    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :cond_0
    return-void
.end method

.method public setOnTabChangeListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TabHost$OnTabChangeListener;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mTabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 320
    return-void
.end method

.method public setPhotoRawContactId(J)V
    .locals 1
    .param p1, "rawContactId"    # J

    .prologue
    .line 275
    iput-wide p1, p0, Lcom/android/contacts/editor/LinkedContactEditorView;->mRawContactId:J

    .line 274
    return-void
.end method

.method public setState(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 0
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/common/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 253
    return-void
.end method
