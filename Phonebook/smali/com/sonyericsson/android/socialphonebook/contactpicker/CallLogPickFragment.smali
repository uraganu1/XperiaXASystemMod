.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;
.super Landroid/app/ListFragment;
.source "CallLogPickFragment.java"


# instance fields
.field private mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

.field private mCallLogAdapter:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

.field private mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

.field private mContext:Landroid/app/Activity;

.field private mEmptyView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogAdapter:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private returnCallLogPickerResult(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, -0x1

    .line 173
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogAdapter:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 175
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->getContactInfo(Landroid/database/Cursor;)Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;

    move-result-object v0

    .line 177
    .local v0, "contactInfo":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v4, "result":Ljava/util/ArrayList;
    if-eqz v0, :cond_1

    iget-wide v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->dataId:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 179
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v0, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;->dataId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_0
    const-string/jumbo v5, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 186
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_2

    .line 187
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v5, v10, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 192
    .end local v0    # "contactInfo":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    .end local v4    # "result":Ljava/util/ArrayList;
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 172
    return-void

    .line 181
    .restart local v0    # "contactInfo":Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache$ContactInfo;
    .restart local v4    # "result":Ljava/util/ArrayList;
    :cond_1
    const-string/jumbo v5, "number"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v3    # "number":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    .line 82
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)V

    .line 81
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 110
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Z)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    .line 112
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    .line 111
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->getExcludeUnknownPhoneNumberQueryCommandCreator(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;

    move-result-object v0

    .line 113
    .local v0, "queryCommandCreator":Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogAdapter:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$QueryCommandCreator;->create()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->queryAsync(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 69
    const v1, 0x7f040037

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mEmptyView:Landroid/widget/TextView;

    .line 72
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mListView:Landroid/widget/ListView;

    .line 74
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->stopRequestProcessing()V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->destroy()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogAdapter:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogAdapter:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->destroy()V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogContentHelper:Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->release()V

    .line 145
    :cond_2
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mContext:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 164
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->returnCallLogPickerResult(I)V

    .line 163
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->setBackgroundFlag(Z)V

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->stopRequestProcessing()V

    .line 134
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->clearCache()V

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCache:Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ContactInfoCache;->setBackgroundFlag(Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogAdapter:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->mCallLogAdapter:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickAdapter;->releasePreDrawListener()V

    .line 120
    :cond_1
    return-void
.end method
