.class public LOe/b;
.super LOe/a;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "https://android.asset/"

.field public static final d:Ljava/lang/String; = "file:///android_asset/"


# instance fields
.field public final a:LOe/c;

.field public final b:LOe/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LOe/b;-><init>(LOe/a;)V

    return-void
.end method

.method public constructor <init>(LOe/a;)V
    .locals 2
    .param p1    # LOe/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, LOe/a;-><init>()V

    .line 3
    new-instance v0, LOe/c;

    const-string v1, "https://android.asset/"

    invoke-direct {v0, v1}, LOe/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LOe/b;->a:LOe/c;

    .line 4
    iput-object p1, p0, LOe/b;->b:LOe/a;

    return-void
.end method

.method public static c(LOe/a;)LOe/b;
    .locals 1
    .param p0    # LOe/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LOe/b;

    invoke-direct {v0, p0}, LOe/b;-><init>(LOe/a;)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOe/b;->a:LOe/c;

    invoke-virtual {v0, p1}, LOe/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://android.asset/"

    const-string v1, "file:///android_asset/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LOe/b;->b:LOe/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, LOe/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method
