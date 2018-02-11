.class Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmsDefaultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmsDefaultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    }
.end annotation


# instance fields
.field mAppListExt:Lcom/mediatek/settings/ext/IAppListExt;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/SmsDefaultDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/SmsDefaultDialog;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/settings/SmsDefaultDialog;

    .prologue
    const/4 v3, 0x0

    .line 231
    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItems()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    .line 233
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getSelectedIndex()I

    move-result v1

    .line 235
    .local v1, "selected":I
    if-lez v1, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 237
    .local v0, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 238
    const/4 v1, 0x0

    .line 240
    .end local v0    # "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    :cond_0
    iput v1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    .line 242
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getAppListPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAppListExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mAppListExt:Lcom/mediatek/settings/ext/IAppListExt;

    .line 231
    return-void
.end method

.method private getItems()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v7, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-virtual {v7}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 310
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;>;"
    iget-object v7, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-static {v7}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v7

    .line 311
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 314
    .local v0, "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    :try_start_0
    iget-object v5, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 315
    .local v5, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 316
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 317
    new-instance v7, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 318
    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 319
    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 317
    invoke-direct {v7, p0, v8, v9, v5}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;-><init>(Lcom/android/settings/SmsDefaultDialog$AppListAdapter;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 326
    .end local v0    # "app":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-object v4
.end method

.method private getSelectedIndex()I
    .locals 5

    .prologue
    .line 332
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    const/4 v4, 0x1

    .line 331
    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 333
    .local v0, "appName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "defaultSmsAppPackageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 336
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 337
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    iget-object v3, v3, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    return v2

    .line 336
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "defaultSmsAppPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 258
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 291
    .local v0, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    return-object v1

    .line 294
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const v4, 0x7f13001f

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    .line 264
    .local v9, "item":Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->this$0:Lcom/android/settings/SmsDefaultDialog;

    invoke-virtual {v0}, Lcom/android/settings/SmsDefaultDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    .line 265
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040010

    invoke-virtual {v8, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, "view":Landroid/view/View;
    const v0, 0x7f13001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 267
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v0, v9, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->label:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    if-ne p1, v0, :cond_0

    .line 269
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :goto_0
    const v0, 0x7f13001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 274
    .local v7, "imageView":Landroid/widget/ImageView;
    iget-object v0, v9, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mAppListExt:Lcom/mediatek/settings/ext/IAppListExt;

    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;

    iget-object v0, v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->packgeName:Ljava/lang/String;

    invoke-interface {v3, v0, p1}, Lcom/mediatek/settings/ext/IAppListExt;->setAppListItem(Ljava/lang/String;I)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mAppListExt:Lcom/mediatek/settings/ext/IAppListExt;

    .line 279
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, v9, Lcom/android/settings/SmsDefaultDialog$AppListAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    move v4, p1

    move-object v6, p3

    .line 278
    invoke-interface/range {v0 .. v6}, Lcom/mediatek/settings/ext/IAppListExt;->addLayoutAppView(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;ILandroid/graphics/drawable/Drawable;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 271
    .end local v7    # "imageView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 304
    iget v0, p0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->mSelectedIndex:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
