.class public Lcom/sonymobile/conversations/filter/MobilboxProFilter;
.super Ljava/lang/Object;
.source "MobilboxProFilter.java"

# interfaces
.implements Lcom/sonymobile/conversations/filter/ISmsFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFilter(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    const/4 v7, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    .local v5, "shouldBeFiltered":Z
    aget-object v6, p2, v7

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "body":Ljava/lang/String;
    aget-object v6, p2, v7

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "from":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v6, "3311"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 27
    if-eqz v0, :cond_0

    const-string/jumbo v6, "Mobilbox Pro"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 30
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v6, "de.telekom.mds.mbp"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 31
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 32
    iget v6, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x800000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 33
    iget-boolean v5, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "shouldBeFiltered":Z
    :cond_0
    :goto_0
    return v5

    .line 31
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "shouldBeFiltered":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 34
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 36
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    goto :goto_0
.end method
