.class Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/telecom/PhoneAccountHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private mResId:I

.field final synthetic this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p4, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    .line 231
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 232
    iput p3, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    .line 230
    return-void
.end method

.method private setCustomView(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;Landroid/telecom/PhoneAccount;)V
    .locals 5
    .param p1, "holder"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    .param p2, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    const/4 v4, 0x0

    .line 325
    invoke-virtual {p2}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 326
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->-get3(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->-get3(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 326
    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p1, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->customView:Landroid/view/View;

    .line 329
    const v3, 0x7f0f0052

    .line 328
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 331
    .local v1, "suggestedView":Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->customView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 332
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    .end local v1    # "suggestedView":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v2, p1, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->customView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 246
    check-cast v3, Landroid/view/LayoutInflater;

    .line 252
    .local v3, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 254
    iget v5, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 255
    .local v4, "rowView":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v2, p0, v6}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;)V

    .line 256
    .local v2, "holder":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    const v5, 0x7f0f006f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    .line 257
    const v5, 0x7f0f00c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    .line 258
    const v5, 0x7f0f0044

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 260
    const v5, 0x7f0f00c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->customView:Landroid/view/View;

    .line 262
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 269
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 270
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v5, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v5}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->-get4(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 275
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-nez v0, :cond_1

    .line 276
    const-string/jumbo v5, "SelectPhoneAccountDialogFragment"

    const-string/jumbo v6, "getView, PhoneAccount has been removed, do nothing."

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-object v4

    .line 265
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "holder":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    .end local v4    # "rowView":Landroid/view/View;
    :cond_0
    move-object v4, p2

    .line 266
    .restart local v4    # "rowView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    goto :goto_0

    .line 281
    .restart local v0    # "account":Landroid/telecom/PhoneAccount;
    .restart local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 282
    if-eqz v5, :cond_3

    .line 284
    :cond_2
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :goto_1
    iget-object v7, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 292
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 291
    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    const/16 v5, 0x800

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 296
    const v5, 0x3ee66666    # 0.45f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 297
    const/high16 v5, 0x1060000

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 305
    :goto_3
    invoke-direct {p0, v2, v0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->setCustomView(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;Landroid/telecom/PhoneAccount;)V

    .line 307
    return-object v4

    .line 286
    :cond_3
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v5, v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    .line 289
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 287
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v5, v6

    .line 292
    goto :goto_2

    .line 299
    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 300
    const v5, 0x106000b

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-static {v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->-get4(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 238
    .local v0, "account":Landroid/telecom/PhoneAccount;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x0

    return v1

    .line 241
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
