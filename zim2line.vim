


" https://stackoverflow.com/questions/4976776/how-to-get-path-to-the-current-vimscript-being-executed
" let g:zim2line_file = resolve(expand('<sfile>:p'))
" let g:zim2line_file = fnamemodify(resolve(expand('<sfile>:p')), ':h')
" let g:zim2line_file=expand("<sfile>:p")
let g:zim2line_file = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:zim2toc_file =  g:zim2line_file . "/html2toc"

" https://vi.stackexchange.com/questions/9644/how-to-use-a-variable-in-the-expression-of-a-normal-command

function! AtsZim2Line()
  MatchEnable

  " echo g:zim2line_file . "/html2toc"
  execute "% ! " .  g:zim2toc_file

  " return 0

  " call AtsProcessPre()
  normal :%s/<p>/<p style="font-size:1.00em; padding-bottom:1em;">/g
  normal :%s/<pre>/<pre style="border-radius:0.1em;background-color:#000000;color:#00FF00;overflow-x:scroll;padding:1em;">/g
  normal :%s/<h1>/<h1 style="                                   border-radius: 1.0em; padding:1.00em; font-size:2.500em; background-color: burlywood;font-weight:bold; margin: 1em;        box-shadow: 0.5em 0.5em black; background-image: linear-gradient(315deg, #FC00FF 0%, #00DBDE 100%);color:WHITE;  text-shadow: 0px 0px 32px rgba(255,255,255,1); transform: rotate(-1.0deg);">/g
  normal :%s/<h2>/<h2 style="border-bottom:0.25em double black; border-radius: 0.2em; padding:1.00em; font-size:1.750em; background-color: #ffdaab;  font-weight:bold; margin-bottom:1em;  box-shadow: 0.5em 0.5em black; background-image: linear-gradient(315deg, #FC00FF 0%, #00DBDE 100%);color:WHITE;  text-shadow: 0px 0px 32px rgba(255,255,255,1); transform: rotate(-1.0deg);">/g
  normal :%s/<h3>/<h3 style="border-bottom:0.25em double black; border-radius: 0.2em; padding:0.50em; font-size:1.500em; background-color: #eeeeee;  font-weight:bold; margin-bottom:1em;  box-shadow: 0.5em 0.5em black; background-image: linear-gradient(315deg, #FC00FF 0%, #00DBDE 100%);color:WHITE;  text-shadow: 0px 0px 32px rgba(255,255,255,1); transform: rotate(-0.1deg);">/g
  normal :%s/<h4>/<h4 style="border-bottom:0.10em dotted black; border-radius: 0.2em; padding:0.50em; font-size:1.000em; background-color: #eeeeee;  font-weight:bold; margin-bottom:1em;  box-shadow: 0.5em 0.5em black; background-image: linear-gradient(315deg, #FC00FF 0%, #00DBDE 100%);color:WHITE;  text-shadow: 0px 0px 32px rgba(255,255,255,1); transform: rotate(-0.1deg);">/g
  normal :%s/<h5>/<h5 style="border-bottom:0.10em none   silver;border-radius: 0.2em; padding:0.25em; font-size:1.000em; background-color: #eeeeee;  font-weight:bold; margin-bottom:1em;  box-shadow: 0.5em 0.5em black; background-image: linear-gradient(315deg, #FC00FF 0%, #00DBDE 100%);color:WHITE;  text-shadow: 0px 0px 32px rgba(255,255,255,1); transform: rotate(-0.1deg);">/g
  normal :%s/<th\>/<th style="background-color:#cccccc;padding:5px;border-bottom:0.1em double silver;"/g
  normal :%s/<td/<td style="font-size:1.00em; background-color:#eeeeee;padding:5px; " /g
  normal :%s/class="checked-box"/   style="list-style-image: url(data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A\/wD\/oL2nkwAAAAlwSFlzAAANOgAADMQBiN+4gQAAAAd0SU1FB9gKGQ8sMEGsKGkAAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRoIEdJTVBXgQ4XAAAEBUlEQVRIx62V22tdRRTGf7Nn73P2ybntnNOe3NqkPTGgLTVUUZF6QatSLOKTPgqCIqLgQ0H\/A1sQQbBYCBb1QfAxiC8tSO1FqHkwJVKtjdTGNraUmObsc9nXmfGh7cGYpM1D5nHWzPetteZb3wg2eB2YqYm4zSadsMtoboiNBH\/3TE0awx6j+MRoxoTg\/IYRvP19TQrJS0bzhdHGSyKFkLTtjSKwMjyiEz43ynhtP6bdjBCWyFobAf7eT7VhNF\/q1FRbjYjmUohlCVPwnB+6FUxMTJipqSmUUhhjEGKd3bMT4ks\/Y6oLBK2Yth8hHYtCJXOix7Nf7xLMzc0xOzvLzp078TyPNE3viW3QJPXzhNWbxFFKHCmMhoLn\/FHodd48vGfhapdAacXQlkFK5dL6wIUm6fuTZPuvqDQhaMUYYyiVyuQr6rXDexYuAdi3tSv1ZJNs\/R\/CaszzT+1na88uXFnCEnJVgivBNN8uTJKmHQI\/ptOOcXNZzMz9mOqFs90OHpipWcYwlo5P4ebnuOkrvr5wgrH+h3im7y36MzuwRXYZeKha\/OhP0EkadFoxQSdGSotedR\/+XwMc2XvKdNUFOFqZx6LKZWIiwjgkikNmLp\/hm8sH+K1zjFTHXfBYdTi+eJArzXM0GxFxoBDCopLvo\/fqEwi1XPkWkGqjFo2TgB1jOYZUKZTS\/D1\/ncmLh7jon0IbRWoiTi59ymzzJEEQE3cStNZsGxqlfPE57MBbOR8fP3hDGalOO9fq2DlBvmZw8xa2IxACGn6TydlD\/O6f5OzSV\/zif0cYhLQaEXGkKBbz7Ov\/AOlXV1cxgBJRI3fuSTrpTawt18kWIZN1CFuaONI0w0WOXfsI43YIggh\/KUSlhqxrMz74AkOZcWBm9QkH+Gw8NDLuITi+m0yzhluSyJzBLcpblUhFxywSRAEtPwQjsKVN30CNh0uvYuOubSHLtN3J0TO1j0pmBNuFbFWRK0gyPRZpktL2I5JQkclKakNlnh54g6ocvevUr\/Ai2a7wineEkcJupA3S1Wg0nVZM2E6wbEF5U5G9Q++wI7sfR7h3N8HVNstykBfzH+KJEZwiWD0aIwxCgJ0R1Mu7GXOeJSuK93bZtQIle4D9pUNU5DC5jEsu55AvZakM5NicGyEj8uuz8bUCQgj67QfY671P3vEoeC69gy695U1U7NG7XV0pUwBjDJa1\/JJlWWxzHuflzQe5FJ\/GsgUVuZ2t8lEkTvfc0aNHb72flBhjVicQQqCUuvM3\/M+WDVguWBrMVdDXEGZlBVEUrVCU9d9s5+fnaTQa2PZyPxEIhJaI1EEoZwX4ncynp6fXrmB4eJjR0VFarRbNZnP9P9rt9gohqNVq1Ov1ZbF\/AZGev3hLJ2\/zAAAAAElFTkSuQmCC)" /g
  normal :%s/class="xchecked-box"/  style="list-style-image: url(data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A\/wD\/oL2nkwAAAAlwSFlzAAANOgAADMQBiN+4gQAAAAd0SU1FB9gKGQ8bDYnDxEwAAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRoIEdJTVBXgQ4XAAAEK0lEQVRIx9WVS2hTWRjHf\/eR3CY1nbxMH2YiZRQS6qO13YlMVxY3SnVcuNIBFezGpSADLoQqLu1sHJCqdCFSXFpw4YOCSH3BtFqttTNamabX3DS5bfO6uffMoglja3RGcDMHzuac7\/z\/53++\/\/cd+L8P6VuCPQYZ8ADNgBd4J31DcDcQs+GnHByRocEDv0kfBSjAOlYCs11Q+gpwDegS8LMJ+3QIK0ATzEhV8Odnz5bzw8P4dJ25aJQ\/WlvJ1df\/K7hSLtOcTNI+Pk69rpMTgqIQhCDvh1\/VSpw79+gRrRMTmLZNezLJJsPg+a5dmOEwQlFqg1sWG16\/Jv7sGWXDwBACFQjC9HcwIMONKkGp4PGAJGEDS0IQmZlhnWnye3c3eiyGo6qr3WHbrJ+dJf7gAXI6zSIr72T7\/fgzmT4FHnTBsgrQBfYvTU0km5vxz86iADnAm0rRPTWFt7cXZccOJJcLAGHb2K9ekT93jmwmwwdAAFpjI6Ntbfxw5879ag7l6o1sr5eHHR3IsRgeQK\/M4sQE+YEB7JcvEY6zAj45SWFgAPPxYwzHoQxIkQjTPT0kIxE+Noj8sexFn4\/xnh58iQTeSpHkHAdrbIzi0BCOrmNPTpK\/eJHM3bt8sCyKQCiR4NWePWSiUZw1+ZLXJm4pFKLhzBlCsRh2RUXacVgeGaF47RrL58+zcP8+RrmMkCQinZ1EL1zAjERqmkH+tLYl1G3bCJw4QUjT0IA0MJfLMX\/5MqmHD0nZNiUgtGULG\/r7ccXjINWuWbnmqsuFu7sb\/4EDNLlcBIEioNs2KUAFGmMxmk6dQm1tRZI+3xBqEkiShBQOox05Ql1nJ26gvuIUAWiKQnj\/ftStW5Fk+YuF+NldsbBA4cYN9KdPmaso8Fc62ZJtk7l1C2t0FGdxESHE1xE4hkHh6lX0oSHSpRIewC\/LrPf7CSgKNpCamkI\/fZr8pUuIZBIcpyaBunahPp1mub+fDyMjGKUSChCsq6Nh717q9u2jbnSU0uAgRrFIwTThyhUCqRS+hgZKLS1fJvDm87SNjZGcnsYUAjcQ8vsJ9\/Xh7u1FDgRQN20iks3iDA+zZFmYhQLqzZtsj8WY3L0baY2Sf55ICCKpFHUzM2SEQAJCHg+hY8fQDh5EDgRWDoRC1J88SePRo2geD0XAcBy8b98Sv3ePYDZbbf2rFQjLIphMsmDbaEBQVQkePox26BCSz7e6i4bDrDt+nGYhmBscpFAskheC4Js3bPR4qHphFYEnlcI7P4\/jdqNpGu8TCe4oCsXr1z\/\/F2ga3+\/cSfTJE0qmSVYIsKzaOZDcbjKyzFIiwfvt21kMBLA07YsetzWNd+3tLLW0sH5igvT8PH9Go\/z44kX+E4LGjg7GDYOcy4XlOEgLC\/\/5P\/5LCFzxOPLmzWyIx+m6fduu7v0NVGqyTSycKksAAAAASUVORK5CYII=)" /g
  normal :%s/class="unchecked-box"/ style="list-style-image: url(data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A\/wD\/oL2nkwAAAAlwSFlzAAANOgAADMQBiN+4gQAAAAd0SU1FB9gKGQ8qAt8h3m8AAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRoIEdJTVBXgQ4XAAAA60lEQVRIx+2VsQqDMBRF70sCLg5OLoKgjk7+lJ\/hh+STXBwcnRz8ArMEkrxOFktbaC3tULzTg5e8k5vADXDq70VbobXmvu\/hvQczg4heHrJfXxQFuq67blZbMc8zpmlCXddIkgTOuZcBUko45zCOI6y1Nz2xFSEEZFmGOI7fGg4A3nsQEZqmuXOu9jallACAtm3fvmutNaIoAjM\/dkBECCF89KCbk4eAb+kEnIAT8EsAM0OIz3hSyrssUvss8t5fg+uIrLXPs0gIgWVZYIyBUurQyYdheO4gz3NUVQVjDNZ1PfSjpWmKsixvehfB9GBZ3NndrgAAAABJRU5ErkJggg==)" /g
  normal :%s/class="migrated-box"/  style="list-style-image: url(data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC\/xhBQAAAAZiS0dEAP8A\/wD\/oL2nkwAAAAlwSFlzAAANOgAADMQBiN+4gQAAAAd0SU1FB+AKHREFA8vJSnkAAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRoIEdJTVBXgQ4XAAAC1klEQVRIx+2VT0hUURTGf\/e958w4Tc3TYowMw1GyEgwr1MqsFmbZIrIWQZsWJUjbdoHQpl3Qps0swnCRECQFYkR\/TC1iKkqmfzAKTo2Vf8hoRsfR995tkRMT87RRWkUHHhy495zvnvvu933wP\/75EKkkEAjIYDCIaZpIKRFCZN0kfX9xcTGtra2\/irVUEolECIfDlJeXo+s6hmFkDaCqKoZhEAqFSCaTv60pqcSyLAoLC\/F4PEtqDmCaJkIIKisrMybX0sdUVRWA5ubmPzdNjjI1cpXkZC\/O1fV03PXgdDqRUtpPIITAsqxsDz0Z\/3CZQv8uqo4N4C8\/Tp2\/DdM0MiZQlvk41OTkI\/LW1SGtCVb5drD3eCc71wcA+VcAHA5vDd8+3UGakxiJV7i9pdQevU5T1R35pJ3MV5QW1pf+0kWBheJ2SWua8EQXZXsu4fVVYEz1sEKvof5EuxjoPvzpcRvrdp9C2gGMx6cpOHBmbImMesds7BZubwMVDTfXDnQ3vQfK7AC8wLfExMX5whyQc3q2OEnjGm5vE76SQxsfBLr77a7CNf+n0r\/l6sSMtsBSnurckiIILCobAtVZhpF4gZF4jubaymj4Ch\/fd380LE7bAnjc0NPxk2yqpmEuwGxF0ag+0k5uTpzZeBeaazvj0We8fXojainsb2xh2BZgbe0gSIllzSIUh63wfQ6dZ\/O2fbjcKlOj58jJ3cVENESw5yErc9nf2MLQ4jwQAkV1Lqiq37\/cZ9WaahJjF9AcmxiPDhLs7ePe23oOnmUwg2hSShQle96tKDjA2HAniusgo9FxnvY9Jxw7RWzGYy92QghM00x5g53qp9sHmtB58\/o2umOI2NwGolMnMYUHIb7aAyiKwsjICLqu2\/qBEIKUUAohMaSHSLyBSMoPTINQ6CX5+fn2AEVFRZSUlBCPx4nFYhl3L4RESjF\/GEgX3pSj+Xw+\/H7\/b3U\/AEOZFnp7O5+5AAAAAElFTkSuQmCC)" /g
  normal :%s/<li>/<li\ style="list-style-image: url(data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAAXNSR0IArs4c6QAAADdJREFUGBljYKA2YEQ20NjY+D8y\/+zZs3B5OANdEUwDTDETTIAQTX2FcDeCrEZ3J8x9hJxFnjwAbSAMCjw7DTEAAAAASUVORK5CYII=);"> /g
  normal :%s/<br>//g

" .checked-box   {list-style-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A/wD/oL2nkwAAAAlwSFlzAAANOgAADMQBiN+4gQAAAAd0SU1FB9gKGQ8sMEGsKGkAAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRoIEdJTVBXgQ4XAAAEBUlEQVRIx62V22tdRRTGf7Nn73P2ybntnNOe3NqkPTGgLTVUUZF6QatSLOKTPgqCIqLgQ0H/A1sQQbBYCBb1QfAxiC8tSO1FqHkwJVKtjdTGNraUmObsc9nXmfGh7cGYpM1D5nHWzPetteZb3wg2eB2YqYm4zSadsMtoboiNBH/3TE0awx6j+MRoxoTg/IYRvP19TQrJS0bzhdHGSyKFkLTtjSKwMjyiEz43ynhtP6bdjBCWyFobAf7eT7VhNF/q1FRbjYjmUohlCVPwnB+6FUxMTJipqSmUUhhjEGKd3bMT4ks/Y6oLBK2Yth8hHYtCJXOix7Nf7xLMzc0xOzvLzp078TyPNE3viW3QJPXzhNWbxFFKHCmMhoLn/FHodd48vGfhapdAacXQlkFK5dL6wIUm6fuTZPuvqDQhaMUYYyiVyuQr6rXDexYuAdi3tSv1ZJNs/R/CaszzT+1na88uXFnCEnJVgivBNN8uTJKmHQI/ptOOcXNZzMz9mOqFs90OHpipWcYwlo5P4ebnuOkrvr5wgrH+h3im7y36MzuwRXYZeKha/OhP0EkadFoxQSdGSotedR/+XwMc2XvKdNUFOFqZx6LKZWIiwjgkikNmLp/hm8sH+K1zjFTHXfBYdTi+eJArzXM0GxFxoBDCopLvo/fqEwi1XPkWkGqjFo2TgB1jOYZUKZTS/D1/ncmLh7jon0IbRWoiTi59ymzzJEEQE3cStNZsGxqlfPE57MBbOR8fP3hDGalOO9fq2DlBvmZw8xa2IxACGn6TydlD/O6f5OzSV/zif0cYhLQaEXGkKBbz7Ov/AOlXV1cxgBJRI3fuSTrpTawt18kWIZN1CFuaONI0w0WOXfsI43YIggh/KUSlhqxrMz74AkOZcWBm9QkH+Gw8NDLuITi+m0yzhluSyJzBLcpblUhFxywSRAEtPwQjsKVN30CNh0uvYuOubSHLtN3J0TO1j0pmBNuFbFWRK0gyPRZpktL2I5JQkclKakNlnh54g6ocvevUr/Ai2a7wineEkcJupA3S1Wg0nVZM2E6wbEF5U5G9Q++wI7sfR7h3N8HVNstykBfzH+KJEZwiWD0aIwxCgJ0R1Mu7GXOeJSuK93bZtQIle4D9pUNU5DC5jEsu55AvZakM5NicGyEj8uuz8bUCQgj67QfY671P3vEoeC69gy695U1U7NG7XV0pUwBjDJa1/JJlWWxzHuflzQe5FJ/GsgUVuZ2t8lEkTvfc0aNHb72flBhjVicQQqCUuvM3/M+WDVguWBrMVdDXEGZlBVEUrVCU9d9s5+fnaTQa2PZyPxEIhJaI1EEoZwX4ncynp6fXrmB4eJjR0VFarRbNZnP9P9rt9gohqNVq1Ov1ZbF/AZGev3hLJ2/zAAAAAElFTkSuQmCC)}
" .xchecked-box  {list-style-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A/wD/oL2nkwAAAAlwSFlzAAANOgAADMQBiN+4gQAAAAd0SU1FB9gKGQ8bDYnDxEwAAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRoIEdJTVBXgQ4XAAAEK0lEQVRIx9WVS2hTWRjHf/eR3CY1nbxMH2YiZRQS6qO13YlMVxY3SnVcuNIBFezGpSADLoQqLu1sHJCqdCFSXFpw4YOCSH3BtFqttTNamabX3DS5bfO6uffMoglja3RGcDMHzuac7/z/53++//cd+L8P6VuCPQYZ8ADNgBd4J31DcDcQs+GnHByRocEDv0kfBSjAOlYCs11Q+gpwDegS8LMJ+3QIK0ATzEhV8Odnz5bzw8P4dJ25aJQ/WlvJ1df/K7hSLtOcTNI+Pk69rpMTgqIQhCDvh1/VSpw79+gRrRMTmLZNezLJJsPg+a5dmOEwQlFqg1sWG16/Jv7sGWXDwBACFQjC9HcwIMONKkGp4PGAJGEDS0IQmZlhnWnye3c3eiyGo6qr3WHbrJ+dJf7gAXI6zSIr72T7/fgzmT4FHnTBsgrQBfYvTU0km5vxz86iADnAm0rRPTWFt7cXZccOJJcLAGHb2K9ekT93jmwmwwdAAFpjI6Ntbfxw5879ag7l6o1sr5eHHR3IsRgeQK/M4sQE+YEB7JcvEY6zAj45SWFgAPPxYwzHoQxIkQjTPT0kIxE+Noj8sexFn4/xnh58iQTeSpHkHAdrbIzi0BCOrmNPTpK/eJHM3bt8sCyKQCiR4NWePWSiUZw1+ZLXJm4pFKLhzBlCsRh2RUXacVgeGaF47RrL58+zcP8+RrmMkCQinZ1EL1zAjERqmkH+tLYl1G3bCJw4QUjT0IA0MJfLMX/5MqmHD0nZNiUgtGULG/r7ccXjINWuWbnmqsuFu7sb/4EDNLlcBIEioNs2KUAFGmMxmk6dQm1tRZI+3xBqEkiShBQOox05Ql1nJ26gvuIUAWiKQnj/ftStW5Fk+YuF+NldsbBA4cYN9KdPmaso8Fc62ZJtk7l1C2t0FGdxESHE1xE4hkHh6lX0oSHSpRIewC/LrPf7CSgKNpCamkI/fZr8pUuIZBIcpyaBunahPp1mub+fDyMjGKUSChCsq6Nh717q9u2jbnSU0uAgRrFIwTThyhUCqRS+hgZKLS1fJvDm87SNjZGcnsYUAjcQ8vsJ9/Xh7u1FDgRQN20iks3iDA+zZFmYhQLqzZtsj8WY3L0baY2Sf55ICCKpFHUzM2SEQAJCHg+hY8fQDh5EDgRWDoRC1J88SePRo2geD0XAcBy8b98Sv3ePYDZbbf2rFQjLIphMsmDbaEBQVQkePox26BCSz7e6i4bDrDt+nGYhmBscpFAskheC4Js3bPR4qHphFYEnlcI7P4/jdqNpGu8TCe4oCsXr1z//F2ga3+/cSfTJE0qmSVYIsKzaOZDcbjKyzFIiwfvt21kMBLA07YsetzWNd+3tLLW0sH5igvT8PH9Go/z44kX+E4LGjg7GDYOcy4XlOEgLC//5P/5LCFzxOPLmzWyIx+m6fduu7v0NVGqyTSycKksAAAAASUVORK5CYII=)}
" .unchecked-box {list-style-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAAZiS0dEAP8A/wD/oL2nkwAAAAlwSFlzAAANOgAADMQBiN+4gQAAAAd0SU1FB9gKGQ8qAt8h3m8AAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRoIEdJTVBXgQ4XAAAA60lEQVRIx+2VsQqDMBRF70sCLg5OLoKgjk7+lJ/hh+STXBwcnRz8ArMEkrxOFktbaC3tULzTg5e8k5vADXDq70VbobXmvu/hvQczg4heHrJfXxQFuq67blZbMc8zpmlCXddIkgTOuZcBUko45zCOI6y1Nz2xFSEEZFmGOI7fGg4A3nsQEZqmuXOu9jallACAtm3fvmutNaIoAjM/dkBECCF89KCbk4eAb+kEnIAT8EsAM0OIz3hSyrssUvss8t5fg+uIrLXPs0gIgWVZYIyBUurQyYdheO4gz3NUVQVjDNZ1PfSjpWmKsixvehfB9GBZ3NndrgAAAABJRU5ErkJggg==)}
" .migrated-box  {list-style-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC/xhBQAAAAZiS0dEAP8A/wD/oL2nkwAAAAlwSFlzAAANOgAADMQBiN+4gQAAAAd0SU1FB+AKHREFA8vJSnkAAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRoIEdJTVBXgQ4XAAAC1klEQVRIx+2VT0hUURTGf/e958w4Tc3TYowMw1GyEgwr1MqsFmbZIrIWQZsWJUjbdoHQpl3Qps0swnCRECQFYkR/TC1iKkqmfzAKTo2Vf8hoRsfR995tkRMT87RRWkUHHhy495zvnvvu933wP/75EKkkEAjIYDCIaZpIKRFCZN0kfX9xcTGtra2/irVUEolECIfDlJeXo+s6hmFkDaCqKoZhEAqFSCaTv60pqcSyLAoLC/F4PEtqDmCaJkIIKisrMybX0sdUVRWA5ubmPzdNjjI1cpXkZC/O1fV03PXgdDqRUtpPIITAsqxsDz0Z/3CZQv8uqo4N4C8/Tp2/DdM0MiZQlvk41OTkI/LW1SGtCVb5drD3eCc71wcA+VcAHA5vDd8+3UGakxiJV7i9pdQevU5T1R35pJ3MV5QW1pf+0kWBheJ2SWua8EQXZXsu4fVVYEz1sEKvof5EuxjoPvzpcRvrdp9C2gGMx6cpOHBmbImMesds7BZubwMVDTfXDnQ3vQfK7AC8wLfExMX5whyQc3q2OEnjGm5vE76SQxsfBLr77a7CNf+n0r/l6sSMtsBSnurckiIILCobAtVZhpF4gZF4jubaymj4Ch/fd380LE7bAnjc0NPxk2yqpmEuwGxF0ag+0k5uTpzZeBeaazvj0We8fXojainsb2xh2BZgbe0gSIllzSIUh63wfQ6dZ/O2fbjcKlOj58jJ3cVENESw5yErc9nf2MLQ4jwQAkV1Lqiq37/cZ9WaahJjF9AcmxiPDhLs7ePe23oOnmUwg2hSShQle96tKDjA2HAniusgo9FxnvY9Jxw7RWzGYy92QghM00x5g53qp9sHmtB58/o2umOI2NwGolMnMYUHIb7aAyiKwsjICLqu2/qBEIKUUAohMaSHSLyBSMoPTINQ6CX5+fn2AEVFRZSUlBCPx4nFYhl3L4RESjF/GEgX3pSj+Xw+/H7/b3U/AEOZFnp7O5+5AAAAAElFTkSuQmCC)}

  normal gg
  normal /<h1\>
  normal kVk0w%k"+y
  execute "! xsel -b -o | minify --type html | xsel -b -i"
endfunction

function! AtsCountWord( word )
  redir => cnt
    silent exe '%s/' . a:word . '//n'
  redir END
  return matchstr( cnt, '\d\+' )
endfunction

function! AtsProcessPre()
  let l:c = 0
  let l:total = AtsCountWord( '<pre>' )

  normal gg
  normal /\<pre\>
  normal j

  while l:c < l:total
    normal /<pre>
    normal $vit
    normal :s/$/<br\/>/g
    normal  /<\/pre>
    normal j0
    let l:c += 1
  endwhile
endfunction

command! Zim2Line call AtsZim2Line()
" vim: set sw=2 ts=2 et nowrap:
