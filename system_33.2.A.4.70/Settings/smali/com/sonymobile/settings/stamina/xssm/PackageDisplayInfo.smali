.class Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;
.super Ljava/lang/Object;
.source "PackageDisplayInfo.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabelString:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    .line 31
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 32
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 34
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 37
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mLabelString:Ljava/lang/String;

    return-object v0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/xssm/PackageDisplayInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
