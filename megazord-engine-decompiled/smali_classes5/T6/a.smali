.class public LT6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/Language;


# instance fields
.field public a:LT6/c;

.field public b:LT6/b;

.field public c:LT6/d;

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

    new-instance v0, LT6/c;

    invoke-direct {v0, p1}, LT6/c;-><init>(LX6/b;)V

    iput-object v0, p0, LT6/a;->a:LT6/c;

    new-instance v0, LT6/b;

    invoke-direct {v0, p1}, LT6/b;-><init>(LX6/b;)V

    iput-object v0, p0, LT6/a;->b:LT6/b;

    new-instance p1, LT6/d;

    invoke-direct {p1}, LT6/d;-><init>()V

    iput-object p1, p0, LT6/a;->c:LT6/d;

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

    iget-object v0, p0, LT6/a;->b:LT6/b;

    return-object v0
.end method

.method public getProvider()Lorg/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LT6/a;->a:LT6/c;

    return-object v0
.end method

.method public getStyler()Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LT6/a;->c:LT6/d;

    return-object v0
.end method
