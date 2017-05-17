.class public Lcom/android/common/SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# static fields
.field private static sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 33
    .local v0, "cls":Ljava/lang/Class;
    const-string/jumbo v2, "apply"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/common/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "unused":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    sput-object v2, Lcom/android/common/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 40
    sget-object v2, Lcom/android/common/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 42
    :try_start_0
    sget-object v2, Lcom/android/common/SharedPreferencesCompat;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 50
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void

    .line 46
    :catch_1
    move-exception v0

    .local v0, "unused":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method
