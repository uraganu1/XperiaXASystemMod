.class public Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;
.super Ljava/lang/Object;
.source "GeotagSettingsDialog.java"


# direct methods
.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;ILandroid/content/Context;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;->storeSetting(ILandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadSetting(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 49
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "pref_key_geotag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private storeSetting(ILandroid/content/Context;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "pref_key_geotag"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method


# virtual methods
.method public createSettingsDialog(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 20
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 21
    const v2, 0x7f0b0229

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 22
    const v2, 0x7f0b022a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 23
    const v2, 0x7f0b022b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 27
    .local v1, "labels":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09003a

    invoke-direct {v0, p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 29
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0225

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;->loadSetting(Landroid/content/Context;)I

    move-result v3

    .line 31
    new-instance v4, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$1;

    invoke-direct {v4, p0, p1}, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$1;-><init>(Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;Landroid/content/Context;)V

    .line 29
    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 38
    new-instance v3, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog$2;-><init>(Lcom/sonyericsson/conversations/ui/GeotagSettingsDialog;)V

    const v4, 0x7f0b015a

    .line 29
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 19
    return-void
.end method
