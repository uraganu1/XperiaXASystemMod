.class public final Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.super Landroid/app/Activity;
.source "DisplayLeakActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;,
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;,
        Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    }
.end annotation


# static fields
.field private static leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;


# instance fields
.field private actionButton:Landroid/widget/Button;

.field private failureView:Landroid/widget/TextView;

.field leaks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;",
            ">;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field visibleLeakRefKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 406
    return-void
.end method

.method static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x2e

    .line 491
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, "separator":I
    const/4 v1, -0x1

    .line 492
    if-eq v0, v1, :cond_0

    .line 495
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 493
    :cond_0
    return-object p0
.end method

.method public static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "referenceKey"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "show_latest"

    .line 80
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    .line 82
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static getLeakDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .line 91
    .local v0, "leakDirectoryProvider":Lcom/squareup/leakcanary/LeakDirectoryProvider;
    if-nez v0, :cond_0

    .line 94
    new-instance v1, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;

    invoke-direct {v1, p0}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/squareup/leakcanary/DefaultLeakDirectoryProvider;->leakDirectory()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 92
    :cond_0
    invoke-interface {v0}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->leakDirectory()Ljava/io/File;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 342
    return-object v4

    .line 335
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v4

    .line 337
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    .line 338
    .local v1, "leak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v2, v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v2, v2, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    return-object v1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 199
    :goto_0
    return-void

    .line 194
    :cond_0
    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "show_latest"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    .line 121
    sget v1, Lcom/squareup/leakcanary/R$layout;->leak_canary_display_leak:I

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setContentView(I)V

    .line 123
    sget v1, Lcom/squareup/leakcanary/R$id;->__leak_canary_display_leak_list:I

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    .line 124
    sget v1, Lcom/squareup/leakcanary/R$id;->__leak_canary_display_leak_failure:I

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    .line 125
    sget v1, Lcom/squareup/leakcanary/R$id;->__leak_canary_action:I

    invoke-virtual {p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    .line 127
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    .line 128
    return-void

    :cond_0
    const-string/jumbo v1, "visibleLeakRefKey"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    goto :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v1, "show_latest"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v0

    .line 162
    .local v0, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-nez v0, :cond_0

    .line 181
    return v1

    .line 163
    :cond_0
    sget v1, Lcom/squareup/leakcanary/R$string;->leak_canary_share_leak:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;

    invoke-direct {v2, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 170
    iget-object v1, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v1, v1, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 171
    :cond_1
    sget v1, Lcom/squareup/leakcanary/R$string;->leak_canary_share_heap_dump:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;

    invoke-direct {v2, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    invoke-static {}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->forgetActivity()V

    .line 158
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 189
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->updateUi()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    invoke-static {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 143
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "visibleLeakRefKey"

    .line 137
    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 149
    sget v0, Lcom/squareup/leakcanary/R$style;->leak_canary_LeakCanary_Base:I

    if-ne p1, v0, :cond_0

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 153
    return-void

    .line 150
    :cond_0
    return-void
.end method

.method shareHeapDump()V
    .locals 5

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 212
    .local v2, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v0, v3, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    .line 213
    .local v0, "heapDumpFile":Ljava/io/File;
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "application/octet-stream"

    .line 215
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.STREAM"

    .line 216
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 217
    sget v3, Lcom/squareup/leakcanary/R$string;->leak_canary_share_with:I

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

.method shareLeak()V
    .locals 6

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v2

    .line 203
    .local v2, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    iget-object v3, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    iget-object v4, v2, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Lcom/squareup/leakcanary/LeakCanary;->leakInfo(Landroid/content/Context;Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Z)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "leakInfo":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "text/plain"

    .line 205
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.TEXT"

    .line 206
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    sget v3, Lcom/squareup/leakcanary/R$string;->leak_canary_share_with:I

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method updateUi()V
    .locals 14

    .prologue
    const/16 v9, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 221
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    if-eqz v10, :cond_0

    .line 225
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getVisibleLeak()Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    move-result-object v7

    .line 230
    .local v7, "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    if-eqz v7, :cond_2

    .line 234
    :goto_1
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 236
    .local v4, "listAdapter":Landroid/widget/ListAdapter;
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v10, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 237
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    if-nez v7, :cond_3

    .line 296
    instance-of v10, v4, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    if-nez v10, :cond_6

    .line 299
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 300
    .local v0, "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    new-instance v11, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;

    invoke-direct {v11, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$5;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 308
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 309
    sget v10, Lcom/squareup/leakcanary/R$string;->leak_canary_leak_list_title:I

    new-array v11, v13, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-virtual {p0, v10, v11}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 311
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    sget v11, Lcom/squareup/leakcanary/R$string;->leak_canary_delete_all:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 312
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    new-instance v11, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;

    invoke-direct {v11, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$6;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .end local v0    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;
    .end local v4    # "listAdapter":Landroid/widget/ListAdapter;
    :goto_2
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->leaks:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_7

    :goto_3
    invoke-virtual {v10, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 331
    :goto_4
    return-void

    .end local v7    # "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    :cond_0
    const-string/jumbo v8, "Loading leaks..."

    .line 222
    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    return-void

    .line 226
    :cond_1
    iput-object v12, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    goto :goto_0

    .line 231
    .restart local v7    # "visibleLeak":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;
    :cond_2
    iput-object v12, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->visibleLeakRefKey:Ljava/lang/String;

    goto :goto_1

    .line 240
    .restart local v4    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_3
    iget-object v5, v7, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->result:Lcom/squareup/leakcanary/AnalysisResult;

    .line 241
    .local v5, "result":Lcom/squareup/leakcanary/AnalysisResult;
    iget-object v10, v5, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    if-nez v10, :cond_4

    .line 255
    instance-of v9, v4, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    if-nez v9, :cond_5

    .line 258
    new-instance v1, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    invoke-direct {v1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;-><init>()V

    .line 259
    .local v1, "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 260
    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    new-instance v10, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;

    invoke-direct {v10, p0, v1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 267
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 268
    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    sget v10, Lcom/squareup/leakcanary/R$string;->leak_canary_delete:I

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 270
    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    new-instance v10, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;

    invoke-direct {v10, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$4;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    :goto_5
    iget-object v3, v7, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;->heapDump:Lcom/squareup/leakcanary/HeapDump;

    .line 290
    .local v3, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    iget-object v9, v5, Lcom/squareup/leakcanary/AnalysisResult;->leakTrace:Lcom/squareup/leakcanary/LeakTrace;

    iget-object v10, v3, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v11, v3, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10, v11}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->update(Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-wide v10, v5, Lcom/squareup/leakcanary/AnalysisResult;->retainedHeapSize:J

    invoke-static {p0, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "size":Ljava/lang/String;
    iget-object v9, v5, Lcom/squareup/leakcanary/AnalysisResult;->className:Ljava/lang/String;

    invoke-static {v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->classSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "className":Ljava/lang/String;
    sget v9, Lcom/squareup/leakcanary/R$string;->leak_canary_class_has_leaked:I

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v8

    aput-object v6, v10, v13

    invoke-virtual {p0, v9, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 242
    .end local v1    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v6    # "size":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v10, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 243
    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->failureView:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget v11, Lcom/squareup/leakcanary/R$string;->leak_canary_failure_report:I

    invoke-virtual {p0, v11}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/squareup/leakcanary/AnalysisResult;->failure:Ljava/lang/Throwable;

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    sget v9, Lcom/squareup/leakcanary/R$string;->leak_canary_analysis_failed:I

    invoke-virtual {p0, v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->setTitle(I)V

    .line 248
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->invalidateOptionsMenu()V

    .line 249
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 250
    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->actionButton:Landroid/widget/Button;

    sget v9, Lcom/squareup/leakcanary/R$string;->leak_canary_delete:I

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 252
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v8, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_4

    :cond_5
    move-object v1, v4

    .line 256
    check-cast v1, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;

    .restart local v1    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    goto :goto_5

    .line 297
    .end local v1    # "adapter":Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
    .end local v5    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_6
    check-cast v4, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;

    .end local v4    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v4}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LeakListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2

    :cond_7
    move v8, v9

    .line 329
    goto/16 :goto_3
.end method
