.class public final synthetic LN3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/k;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LN3/h$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;LN3/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN3/g;->a:Ljava/lang/String;

    iput-object p2, p0, LN3/g;->b:LN3/h$a;

    return-void
.end method


# virtual methods
.method public final a(Lo3/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LN3/g;->a:Ljava/lang/String;

    iget-object v1, p0, LN3/g;->b:LN3/h$a;

    invoke-static {v0, v1, p1}, LN3/h;->a(Ljava/lang/String;LN3/h$a;Lo3/h;)LN3/f;

    move-result-object p1

    return-object p1
.end method
