.class public LU6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/Language;


# instance fields
.field public a:LU6/f;

.field public b:LU6/e;

.field public c:LU6/g;

.field public d:LX6/b;


# direct methods
.method public constructor <init>(LX6/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageConnector"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU6/f;

    invoke-direct {v0, p1}, LU6/f;-><init>(LX6/b;)V

    iput-object v0, p0, LU6/d;->a:LU6/f;

    new-instance v0, LU6/e;

    invoke-direct {v0, p1}, LU6/e;-><init>(LX6/b;)V

    iput-object v0, p0, LU6/d;->b:LU6/e;

    new-instance p1, LU6/g;

    invoke-direct {p1}, LU6/g;-><init>()V

    iput-object p1, p0, LU6/d;->c:LU6/g;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "java"

    return-object v0
.end method

.method public getParser()Lorg/blacksquircle/ui/language/base/parser/LanguageParser;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LU6/d;->b:LU6/e;

    return-object v0
.end method

.method public getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LU6/d;->a:LU6/f;

    return-object v0
.end method

.method public getStyler()Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LU6/d;->c:LU6/g;

    return-object v0
.end method
