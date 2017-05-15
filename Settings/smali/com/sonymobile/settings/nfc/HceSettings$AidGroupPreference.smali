.class Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;
.super Landroid/preference/Preference;
.source "HceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/nfc/HceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AidGroupPreference"
.end annotation


# instance fields
.field private final listener:Landroid/view/View$OnClickListener;

.field private final service:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/sonymobile/settings/nfc/HceSettings;


# direct methods
.method public constructor <init>(Lcom/sonymobile/settings/nfc/HceSettings;Landroid/content/Context;Landroid/content/ComponentName;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sonymobile/settings/nfc/HceSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "service"    # Landroid/content/ComponentName;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    .line 193
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 194
    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->setLayoutResource(I)V

    .line 195
    iput-object p3, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->service:Landroid/content/ComponentName;

    .line 196
    iput-object p4, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->listener:Landroid/view/View$OnClickListener;

    .line 192
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 203
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    const v2, 0x7f130114

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 207
    .local v0, "banner":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-static {v2}, Lcom/sonymobile/settings/nfc/HceSettings;->-get1(Lcom/sonymobile/settings/nfc/HceSettings;)Lcom/sonymobile/settings/nfc/HceBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    const v2, 0x7f1300b5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 210
    .local v1, "checkBox":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->this$0:Lcom/sonymobile/settings/nfc/HceSettings;

    invoke-static {v2}, Lcom/sonymobile/settings/nfc/HceSettings;->-get1(Lcom/sonymobile/settings/nfc/HceSettings;)Lcom/sonymobile/settings/nfc/HceBackend;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/settings/nfc/HceSettings$AidGroupPreference;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/nfc/HceBackend;->getCheckBoxState(Landroid/content/ComponentName;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    return-void
.end method
